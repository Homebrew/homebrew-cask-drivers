cask "cycliqplus-firmware-updater" do
  version "1.02"
  sha256 "577d05624247cef5f42956b3240d76598c74a9d25c74e17c98d626065d14fc63"

  url "https://cycliq.com/files/software/CycliqFirmwareUpdater-#{version}.dmg"
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
