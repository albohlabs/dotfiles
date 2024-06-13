import lowBattery from "./battery"

export default function init() {
  try {
    lowBattery()
  } catch (error) {
    logError(error)
  }
}
