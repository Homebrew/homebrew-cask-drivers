cask "8bitdo-firmware-updater" do
  version "2.3.3"
  sha256 "7d6cd50740fbac5375aa73c963cd248f3d02eae24799576c518cd8dc2e63c12c"

  url "http://tools.8bitdo.com/8BitdoFirmwareUpdater/8BitDoFirmwareUpdaterV#{version}.zip"
  name "8BitDo Firmware Updater"
  desc "Firmware updater for 8BitDo devices"
  homepage "https://support.8bitdo.com/firmware-updater.html"

  livecheck do
    url "http://tools.8bitdo.com/8BitdoFirmwareUpdater/appcast.xml"
    strategy :sparkle
  end

  app "8BitDo Firmware Updater.app"

  uninstall quit: "com.Dev.Sihoo.-BitDoFirmwareUpdater"

  zap trash: [
    "~/Library/Caches/com.Dev.Sihoo.-BitDoFirmwareUpdater",
    "~/Library/Preferences/com.Dev.Sihoo.-BitDoFirmwareUpdater.plist",
    "~/Library/Saved Application State/com.Dev.Sihoo.-BitDoFirmwareUpdater.savedState",
  ]
end
