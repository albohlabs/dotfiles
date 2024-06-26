import PanelButton from "../PanelButton"
import icons from "lib/icons"
import asusctl from "service/asusctl"

const notifications = await Service.import("notifications")
const bluetooth = await Service.import("bluetooth")
const audio = await Service.import("audio")
const network = await Service.import("network")
const powerprof = await Service.import("powerprofiles")

const ProfileIndicator = () => {
  const visible = asusctl.available
    ? asusctl.bind("profile").as((p) => p !== "Balanced")
    : powerprof.bind("active_profile").as((p) => p !== "balanced")

  const icon = asusctl.available
    ? asusctl.bind("profile").as((p) => icons.asusctl.profile[p])
    : powerprof.bind("active_profile").as((p) => icons.powerprofile[p])

  return Widget.Icon({ visible, icon, size: 11 })
}

const ModeIndicator = () => {
  if (!asusctl.available) {
    return Widget.Icon({
      size: 11,
      setup(self) {
        Utils.idle(() => (self.visible = false))
      },
    })
  }

  return Widget.Icon({
    size: 11,
    visible: asusctl.bind("mode").as((m) => m !== "Hybrid"),
    icon: asusctl.bind("mode").as((m) => icons.asusctl.mode[m]),
  })
}

const MicrophoneIndicator = () =>
  Widget.Icon()
    .hook(
      audio,
      (self) => (self.visible = audio.recorders.length > 0 || audio.microphone.is_muted || false)
    )
    .hook(audio.microphone, (self) => {
      const vol = audio.microphone.is_muted ? 0 : audio.microphone.volume
      const { muted, low, medium, high } = icons.audio.mic
      const cons = [
        [67, high],
        [34, medium],
        [1, low],
        [0, muted],
      ] as const
      self.icon = cons.find(([n]) => n <= vol * 100)?.[1] || ""
      self.size = 11
    })

const DNDIndicator = () =>
  Widget.Icon({
    size: 11,
    visible: notifications.bind("dnd"),
    icon: icons.notifications.silent,
  })

const BluetoothIndicator = () =>
  Widget.Overlay({
    class_name: "bluetooth",
    passThrough: true,
    visible: bluetooth.bind("enabled"),
    child: Widget.Icon({
      icon: icons.bluetooth.enabled,
      size: 11,
    }),
    overlay: Widget.Label({
      hpack: "end",
      vpack: "start",
      label: bluetooth.bind("connected_devices").as((c) => `${c.length}`),
      visible: bluetooth.bind("connected_devices").as((c) => c.length > 0),
    }),
  })

const NetworkIndicator = () =>
  Widget.Icon().hook(network, (self) => {
    const icon = network[network.primary || "wifi"]?.icon_name
    self.icon = icon || ""
    self.visible = !!icon
    self.size = 11
  })

const AudioIndicator = () =>
  Widget.Icon().hook(audio.speaker, (self) => {
    const vol = audio.speaker.is_muted ? 0 : audio.speaker.volume
    const { muted, low, medium, high, overamplified } = icons.audio.volume
    const cons = [
      [101, overamplified],
      [67, high],
      [34, medium],
      [1, low],
      [0, muted],
    ] as const
    self.icon = cons.find(([n]) => n <= vol * 100)?.[1] || ""
    self.size = 11
  })

export default () =>
  PanelButton({
    window: "quicksettings",
    on_clicked: () => App.toggleWindow("quicksettings"),
    on_scroll_up: () => (audio.speaker.volume += 0.02),
    on_scroll_down: () => (audio.speaker.volume -= 0.02),
    child: Widget.Box([
      ProfileIndicator(),
      ModeIndicator(),
      DNDIndicator(),
      BluetoothIndicator(),
      NetworkIndicator(),
      AudioIndicator(),
      MicrophoneIndicator(),
    ]),
  })
