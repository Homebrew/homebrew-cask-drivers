cask "8bitdo-firmware-updater" do
  version "2.2.1"
  sha256 "d90f6b98b4e2127aa892076203789d07f105a8aa9c6d0234911bd55306196579"

  url "http://tools.8bitdo.com/8BitdoFirmwareUpdater/8BitDoFirmwareUpdaterV#{version}.zip"
  name "8BitDo Firmware Updater"
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
