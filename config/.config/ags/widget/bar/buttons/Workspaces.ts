import PanelButton from "../PanelButton"
import options from "options"
import { sh } from "lib/utils"
const hyprland = await Service.import("hyprland")

const { workspaces } = options.bar.workspaces

// hyprctl clients -j | jq -r ".[].initialClass"
// icons can be found on https://www.nerdfonts.com/cheat-sheet
const classToIcons = {
  default: "",
  empty: "",
  code: "󰨞",
  dbeaver: "",
  // "[dD]iscord": "󰙯",
  foot: "",
  evince: "",
  footclient: "",
  kitty: "",
  wezterm: "",
  "org.wezfurlong.wezterm": "",
  firefox: "",
  "firefox-developer-edition": "",
  "google-chrome": "",
  chromium: "",
  edge: "󰇩",
  telegram: "",
  thunderbird: "",
  "thunderbird-beta": "",
  slack: "",
  keymapp: "",
  "1Password": "",
  obsidian: "󰠮",
  keepassxc: "",
  rofi: "",
  Spotify: "󰓇",
  spotube: "󰓇",
  vlc: "󰕼",
  "draw.io": "󰇟",
  "org.qbittorrent.qBittorrent": "",
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
          (self) => {
            const lastId =
              hyprland.workspaces
                // remove special workspaces
                .filter((a) => a.id >= 0)
                // the workspaces are in random order
                .sort((a, b) => a.id - b.id)
                .at(-1)?.id ?? 1

            // empty workspace list
            const workspaces = Array.from({ length: lastId }, (_, i) => ({
              id: i + 1,
            }))

            self.children = workspaces.map((w) =>
              PanelButton({
                on_clicked: () => dispatch(w.id),
                child: Widget.Label({
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
                      self.set_label(icons.length ? icons : classToIcons.empty)

                      self.toggleClassName("active", hyprland.active.workspace.id === w.id)
                      self.toggleClassName(
                        "occupied",
                        (hyprland.getWorkspace(w.id)?.windows || 0) > 0
                      )
                    }),
                }),
              })
            )
          },
          signal
        )
      ),
  })

export default () =>
  PanelButton({
    class_name: "workspaces",
    child: workspaces.bind().as(Workspaces),
  })
