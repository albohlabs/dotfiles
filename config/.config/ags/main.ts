import "lib/session"
import "style/style"
import init from "lib/init"
import options from "options"
import Bar from "widget/bar/Bar"
import Launcher from "widget/launcher/Launcher"
import PowerMenu from "widget/powermenu/PowerMenu"
import SettingsDialog from "widget/settings/SettingsDialog"
import Verification from "widget/powermenu/Verification"
import { forMonitors } from "lib/utils"
import { setupQuickSettings } from "widget/quicksettings/QuickSettings"
import { setupDateMenu } from "widget/datemenu/DateMenu"
import {
  CornerTopleft,
  CornerTopright,
  CornerBottomleft,
  CornerBottomright,
} from "widget/RoundedCorner"

App.config({
  onConfigParsed: () => {
    setupQuickSettings()
    setupDateMenu()
    init()
  },
  closeWindowDelay: {
    launcher: options.transition.value,
    quicksettings: options.transition.value,
    datemenu: options.transition.value,
  },
  windows: () => [
    ...forMonitors(Bar),
    // ...forMonitors(CornerTopleft),
    // ...forMonitors(CornerTopright),
    // ...forMonitors(CornerBottomleft),
    // ...forMonitors(CornerBottomright),
    // ...forMonitors(ScreenCorners),
    // ...forMonitors(OSD),
    Launcher(),
    PowerMenu(),
    SettingsDialog(),
    Verification(),
  ],
})
