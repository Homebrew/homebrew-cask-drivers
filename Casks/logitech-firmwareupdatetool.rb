cask "logitech-firmwareupdatetool" do
  version "2.0.47973"
  sha256 :no_check

  url "https://download01.logi.com/web/ftp/pub/techsupport/keyboards/FirmwareUpdateToolInstaller.zip"
  appcast "https://support.logi.com/api/v2/help_center/en-us/articles.json?label_names=webcontent=productdownload,websoftware=07d54a46-c89d-11e9-9981-4556732441db"
  name "Logitech Firmware Update Tool"
  homepage "https://support.logi.com/hc/en-us/articles/360035037273"

  container nested: "FirmwareUpdateTool/FirmwareUpdateTool.zip"

  app "FirmwareUpdateTool.app"
end
