cask "logitech-firmwareupdatetool" do
  version "2.5.108413"
  sha256 "f0ed92065102d96c45e0819e37bc82baf09b9997b06eb21c16d5abfe70e09e0c"

  url "https://download01.logi.com/web/ftp/pub/techsupport/keyboards/FirmwareUpdateToolInstaller_#{version}.zip"
  name "Logitech Firmware Update Tool"
  desc "Update your Logitech wireless receivers and selected keyboards"
  homepage "https://support.logi.com/hc/en-us/articles/360035037273"

  livecheck do
    url "https://support.logi.com/api/v2/help_center/en-us/articles.json?label_names=webcontent=productdownload,websoftware=07d54a46-c89d-11e9-9981-4556732441db"
    regex(%r{/FirmwareUpdateToolInstaller[._-]?(\d+(?:\.\d+)+)\.zip}i)
  end

  depends_on macos: ">= :high_sierra"

  app "FirmwareUpdateTool.app"
end
