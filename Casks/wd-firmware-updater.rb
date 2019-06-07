cask 'wd-firmware-updater' do
  version '4.0.0.13'
  sha256 '8fd449b79366bc6670b550cd4fd2ca5cc896b90ba29e54a8ce0f86d96ee6fbf2'

  url 'http://download.wdc.com/fwupdater/Mac/WDFirmwareUpdater.zip'
  appcast 'https://support.wdc.com/downloads.aspx?lang=en'
  name 'WD Firmware Updater'
  homepage 'https://support.wdc.com/downloads.aspx?lang=en'

  app 'WD Firmware Updater.app'

  zap trash: [
               '~/Library/Application Support/WDufu',
               '~/Library/Caches/WD Firmware Updater',
             ]
end
