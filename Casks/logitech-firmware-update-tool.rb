cask 'logitech-firmware-update-tool' do
  version '1.0.69'
  sha256 '045d1ca198cc54ced6c43d34155325596ca22c0d08a4f49e786f4e775bdc1b08'

  url 'https://download01.logi.com/web/ftp/pub/techsupport/keyboards/FirmwareUpdateToolInstaller.zip'
  appcast 'https://support.logi.com/hc/en-us/articles/360035037273'
  name 'Logitech Firmware Update Tool'
  homepage 'https://support.logi.com/hc/en-us/articles/360035037273'

  app 'FirmwareUpdateTool.app'
end
