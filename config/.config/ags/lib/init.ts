import hyprland from "./hyprland"
import lowBattery from "./battery"

export default function init() {
  try {
    lowBattery()
    hyprland()
  } catch (error) {
    logError(error)
  }
}
