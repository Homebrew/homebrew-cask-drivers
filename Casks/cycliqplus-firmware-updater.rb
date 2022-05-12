cask "cycliqplus-firmware-updater" do
  version "1.08"
  sha256 "596af6de43bc5cb8ce9b38f3ce1e45ef0fcbb4ff9e559ddbc0dc959fb7b13d12"

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
