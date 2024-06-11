import { opt, mkOptions } from "lib/option"
import { distro } from "lib/variables"
import { icon } from "lib/utils"
import icons from "lib/icons"
import { BarWidget } from "widget/bar/Bar"

const options = mkOptions(OPTIONS, {
  autotheme: opt(true),

  theme: {
    dark: {
      primary: {
        bg: opt("#51a4e7"),
        fg: opt("#141414"),
      },
      error: {
        bg: opt("#e55f86"),
        fg: opt("#141414"),
      },
      bg: opt("#171717"),
      fg: opt("#eeeeee"),
      widget: opt("#eeeeee"),
      border: opt("#eeeeee"),
    },
    light: {
      primary: {
        bg: opt("#426ede"),
        fg: opt("#eeeeee"),
      },
      error: {
        bg: opt("#b13558"),
        fg: opt("#eeeeee"),
      },
      bg: opt("#fffffa"),
      fg: opt("#080808"),
      widget: opt("#080808"),
      border: opt("#080808"),
    },

    blur: opt(0),
    scheme: opt<"dark" | "light">("light"),
    widget: { opacity: opt(94) },
    border: {
      width: opt(1),
      opacity: opt(96),
    },

    shadows: opt(true),
    padding: opt(7),
    spacing: opt(12),
    radius: opt(11),
  },

  transition: opt(200),

  font: {
    size: opt(8),
    name: opt("Hasklug Nerd Font Regular"),
  },

  bar: {
    flatButtons: opt(true),
    position: opt<"top" | "bottom">("top"),
    corners: opt(true),
    transparent: opt(false),
    layout: {
      start: opt<Array<BarWidget>>([
        // "launcher",
        "workspaces",
        "roundedAngleEnd",
        // "taskbar",
        // "messages",
      ]),
      center: opt<Array<BarWidget>>([
        "expander",
        "roundedAngleStart",
        "date",
        "media",
        "roundedAngleEnd",
      ]),
      end: opt<Array<BarWidget>>([
        "expander",
        "roundedAngleStart",
        "systray",
        // "screenrecord",
        "hyprshade",
        "system-info",
        "system",
        "battery",
        // "powermenu",
      ]),
    },
    launcher: {
      icon: {
        colored: opt(true),
        icon: opt(icon(distro.logo, icons.ui.search)),
      },
      label: {
        colored: opt(false),
        label: opt(" Applications"),
      },
      action: opt(() => App.toggleWindow("launcher")),
    },
    date: {
      format: opt("%H:%M - %A %e."),
      action: opt(() => App.toggleWindow("datemenu")),
    },
    battery: {
      bar: opt<"hidden" | "regular" | "whole">("hidden"),
      charging: opt("#00D787"),
      percentage: opt(true),
      blocks: opt(7),
      width: opt(50),
      low: opt(30),
    },
    workspaces: {
      workspaces: opt(0),
    },
    taskbar: {
      iconSize: opt(0),
      monochrome: opt(true),
      exclusive: opt(false),
    },
    messages: {
      action: opt(() => App.toggleWindow("datemenu")),
    },
    systray: {
      ignore: opt(["KDE Connect Indicator", "spotify-client"]),
    },
    media: {
      monochrome: opt(true),
      preferred: opt("spotify"),
      direction: opt<"left" | "right">("right"),
      format: opt("{artists} - {title}"),
      length: opt(40),
    },
    powermenu: {
      monochrome: opt(false),
      action: opt(() => App.toggleWindow("powermenu")),
    },
  },

  launcher: {
    width: opt(0),
    margin: opt(80),
    sh: {
      max: opt(16),
    },
    cliphist: {
      max: opt(16),
    },
    apps: {
      iconSize: opt(62),
      max: opt(6),
      favorites: opt([
        ["microsoft-edge-dev", "wezterm", "org.gnome.Nautilus", "org.gnome.Calendar", "spotify"],
      ]),
    },
  },

  powermenu: {
    sleep: opt("systemctl suspend"),
    reboot: opt("systemctl reboot"),
    logout: opt("pkill Hyprland"),
    shutdown: opt("systemctl poweroff"),
    layout: opt<"line" | "box">("line"),
    labels: opt(true),
  },

  quicksettings: {
    avatar: {
      image: opt(`/var/lib/AccountsService/icons/${Utils.USER}`),
      size: opt(70),
    },
    width: opt(380),
    position: opt<"left" | "center" | "right">("right"),
    networkSettings: opt("gtk-launch gnome-control-center"),
    media: {
      monochromeIcon: opt(true),
      coverSize: opt(100),
    },
  },

  datemenu: {
    position: opt<"left" | "center" | "right">("center"),
    weather: {
      interval: opt(60_000),
      unit: opt<"metric" | "imperial" | "standard">("metric"),
      key: opt<string>(JSON.parse(Utils.readFile(`${App.configDir}/.weather`) || "{}")?.key || ""),
      cities: opt<Array<number>>(
        JSON.parse(Utils.readFile(`${App.configDir}/.weather`) || "{}")?.cities || []
      ),
    },
  },

  hyprshade: {
    interval: opt(10_000),
  },

  osd: {
    progress: {
      vertical: opt(true),
      pack: {
        h: opt<"start" | "center" | "end">("end"),
        v: opt<"start" | "center" | "end">("center"),
      },
    },
    microphone: {
      pack: {
        h: opt<"start" | "center" | "end">("center"),
        v: opt<"start" | "center" | "end">("end"),
      },
    },
  },

  hyprland: {
    gaps: opt(2.4),
    inactiveBorder: opt("#282828"),
    gapsWhenOnly: opt(false),
  },
})

globalThis["options"] = options
export default options
