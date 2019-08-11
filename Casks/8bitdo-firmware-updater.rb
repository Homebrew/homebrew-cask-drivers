cask '8bitdo-firmware-updater' do
  version '1.1.0'
  sha256 'f1970f394764085dfd538a059c4888206668ade7099e04df30b6341fd73a2dfd'

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
