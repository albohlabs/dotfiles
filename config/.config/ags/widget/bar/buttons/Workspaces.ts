import PanelButton from "../PanelButton"
import options from "options"
import { sh } from "lib/utils"
const hyprland = await Service.import("hyprland")

const { workspaces } = options.bar.workspaces

const classToIcons = {
  default: "",
  code: "󰨞",
  dbeaver: "",
  // "[dD]iscord": "󰙯",
  foot: "",
  evince: "",
  footclient: "",
  kitty: "",
  wezterm: "",
  "org.wezfurlong.wezterm": "",
  firefox: "",
  "google-chrome": "",
  chromium: "",
  edge: "󰇩",
  telegram: "",
  thunderbird: "",
  "thunderbird-beta": "",
  slack: "",
  keymapp: "",
  "1Password": "",
  obsidian: "󰠮",
  keepassxc: "󱕴",
  rofi: "",
  Spotify: "󰓇",
  // "class<vlc>": "󰕼",
}

const dispatch = (arg: string | number) => {
  sh(`hyprctl dispatch workspace ${arg}`)
}

const Workspaces = () =>
  Widget.Box({
    setup: (box) =>
      // only recreate workspaces when new ones are created
      ["workspace-added", "workspace-removed"].forEach((signal) =>
        box.hook(
          hyprland,
          (self) =>
            (self.children = hyprland.workspaces
              // the workspaces are in random order
              .sort((a, b) => a.id - b.id)
              .map((w) =>
                Widget.Label({
                  vpack: "center",
                  setup: (self) =>
                    self.hook(hyprland, () => {
                      // the clients on the current workspace
                      const clientClasses = hyprland.clients
                        .filter((c) => c.workspace.id === w.id)
                        .map((c) => c.class)

                      const icons = clientClasses
                        .map((c) => classToIcons[c] ?? classToIcons.default)
                        .join(" ")

                      // TODO: add workspace id via <sub> markup
                      // FIXME: initial render of default icon is black but should be white
                      self.set_label(icons.length ? icons : classToIcons.default)

                      self.toggleClassName("active", hyprland.active.workspace.id === w.id)
                      self.toggleClassName(
                        "occupied",
                        (hyprland.getWorkspace(w.id)?.windows || 0) > 0
                      )
                    }),
                })
              )),
          signal
        )
      ),
  })

export default () =>
  PanelButton({
    window: "overview",
    class_name: "workspaces",
    on_scroll_up: () => dispatch("m+1"),
    on_scroll_down: () => dispatch("m-1"),
    on_clicked: () => App.toggleWindow("overview"),
    child: workspaces.bind().as(Workspaces),
  })
