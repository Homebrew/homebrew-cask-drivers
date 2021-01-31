cask "wd-firmware-updater" do
  version "4.0.0.13"
  sha256 :no_check

  url "https://download.wdc.com/fwupdater/Mac/WDFirmwareUpdater.zip"
  appcast "https://support.wdc.com/downloads.aspx?lang=en"
  name "WD Firmware Updater"
  homepage "https://support.wdc.com/downloads.aspx?lang=en"

  app "WD Firmware Updater.app"

  zap trash: [
    "~/Library/Application Support/WDufu",
    "~/Library/Caches/WD Firmware Updater",
  ]
end
