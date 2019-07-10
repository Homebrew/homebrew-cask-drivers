cask '8bitdo-firmware-updater' do
  version '1.1.0'
  sha256 'f1970f394764085dfd538a059c4888206668ade7099e04df30b6341fd73a2dfd'

  url "http://tools.8bitdo.com/8BitdoFirmwareUpdater/8BitDoFirmwareUpdaterV#{version}.zip"
  appcast 'http://tools.8bitdo.com/8BitdoFirmwareUpdater/appcast.xml'
  name '8BitDo Firmware Updater'
  homepage 'http://8bitdo.com/'

  app '8BitDo Firmware Updater.app'
end
