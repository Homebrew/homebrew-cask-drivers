cask "8bitdo-firmware-updater" do
  version "1.1.9"
  sha256 "181acf95fb028f3df2770812298eef2efe80965f74f635baf02ce0e8a5cf6fc2"

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
