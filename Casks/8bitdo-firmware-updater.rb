cask "8bitdo-firmware-updater" do
  version "1.1.6"
  sha256 "546d33a095f8d5b15798cb86c855fcc5dd37949be589c436c6c0547e7ad40b95"

  url "http://tools.8bitdo.com/8BitdoFirmwareUpdater/8BitDoFirmwareUpdaterV#{version}.zip"
  appcast "http://tools.8bitdo.com/8BitdoFirmwareUpdater/appcast.xml"
  name "8BitDo Firmware Updater"
  homepage "https://support.8bitdo.com/firmware-updater.html"

  depends_on macos: ">= :yosemite"

  app "8BitDo Firmware Updater.app"

  uninstall quit: "com.Dev.Sihoo.-BitDoFirmwareUpdater"

  zap trash: [
    "~/Library/Caches/com.Dev.Sihoo.-BitDoFirmwareUpdater",
    "~/Library/Preferences/com.Dev.Sihoo.-BitDoFirmwareUpdater.plist",
    "~/Library/Saved Application State/com.Dev.Sihoo.-BitDoFirmwareUpdater.savedState",
  ]
end
