cask '8bitdo-firmware-updater' do
  version '1.1.2'
  sha256 '7ca78d472b70d8404e366d63d5a54e5ac7a63f6e20e0f9ad808761706267a9ee'

  url "http://tools.8bitdo.com/8BitdoFirmwareUpdater/8BitDoFirmwareUpdaterV#{version}.zip"
  appcast 'http://tools.8bitdo.com/8BitdoFirmwareUpdater/appcast.xml'
  name '8BitDo Firmware Updater'
  homepage 'https://support.8bitdo.com/firmware-updater.html'

  depends_on macos: '>= :yosemite'

  app '8BitDo Firmware Updater.app'

  uninstall quit: 'com.Dev.Sihoo.-BitDoFirmwareUpdater'

  zap trash: [
               '~/Library/Caches/com.Dev.Sihoo.-BitDoFirmwareUpdater',
               '~/Library/Preferences/com.Dev.Sihoo.-BitDoFirmwareUpdater.plist',
               '~/Library/Saved Application State/com.Dev.Sihoo.-BitDoFirmwareUpdater.savedState',
             ]
end
