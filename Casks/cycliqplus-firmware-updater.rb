cask "cycliqplus-firmware-updater" do
  version "1.09"
  sha256 "7de1e3f178d590727322b897c3b12643849aafbcf7c40246e861dd710efec816"

  url "https://cycliq.com/files/software/downloads/CycliqFirmwareUpdater-#{version}.dmg"
  name "CycliqPlus Firmware Updater"
  desc "Firmware updater for Cycliq Fly bike cameras"
  homepage "https://cycliq.com/"

  livecheck do
    url "https://cycliq.com/software/firmware-autoupdater/macos/"
    strategy :header_match
  end

  app "CycliqPlus Firmware Updater.app"

  zap trash: [
    "~/Library/HTTPStorages/com.cycliq.cycliqplus.Updater.binarycookies",
    "~/Library/Preferences/com.cycliq.cycliqplus.Updater.plist",
  ]
end
