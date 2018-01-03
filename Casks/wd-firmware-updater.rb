cask 'wd-firmware-updater' do
  version :latest
  sha256 :no_check

  url 'http://download.wdc.com/fwupdater/Mac/WDFirmwareUpdater.zip'
  name 'WDFirmwareUpdater'
  homepage 'https://www.wdc.com/'

  app 'WD Firmware Updater.app'
end
