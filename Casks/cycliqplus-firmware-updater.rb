cask "cycliqplus-firmware-updater" do
  version "1.06"
  sha256 "d9c1b5cf54a2a8ef82081c11b717c9f93445b789b8c05faff1150b8092e22510"

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
