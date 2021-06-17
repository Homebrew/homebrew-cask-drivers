cask "cycliqplus-firmware-updater" do
  version "1.05"
  sha256 "1597672628607ff9fb88759c77fd71e9560fc004a62d252f627048dd2df8dcda"

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
