cask "8bitdo-firmware-updater" do
  version "2.2.8"
  sha256 "5bb4a02165aa6bf674f226c3d0f192b052b9f8c989e8b3932780a706a999351e"

  url "http://tools.8bitdo.com/8BitdoFirmwareUpdater/8BitDoFirmwareUpdaterV#{version}.zip"
  name "8BitDo Firmware Updater"
  desc "Firmware updater for 8BitDo devices"
  homepage "https://support.8bitdo.com/firmware-updater.html"

  livecheck do
    url "http://tools.8bitdo.com/8BitdoFirmwareUpdater/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :yosemite"

  app "8BitDo Firmware Updater.app"

  uninstall quit: "com.Dev.Sihoo.-BitDoFirmwareUpdater"

  zap trash: [
    "~/Library/Caches/com.Dev.Sihoo.-BitDoFirmwareUpdater",
    "~/Library/Preferences/com.Dev.Sihoo.-BitDoFirmwareUpdater.plist",
    "~/Library/Saved Application State/com.Dev.Sihoo.-BitDoFirmwareUpdater.savedState",
  ]
end
