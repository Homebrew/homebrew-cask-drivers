cask "logitech-firmwareupdatetool" do
  version "2.6.201219"
  sha256 "2b5f68e4e0a361a993de50bfde0b996ec1ec5ef97f0e89da930af2ec56b0430d"

  url "https://download01.logi.com/web/ftp/pub/techsupport/keyboards/FirmwareUpdateTool_#{version}.zip"
  name "Logitech Firmware Update Tool"
  desc "Update your Logitech wireless receivers and selected keyboards"
  homepage "https://support.logi.com/hc/en-us/articles/360035037273"

  livecheck do
    url "https://support.logi.com/api/v2/help_center/en-us/articles.json?label_names=webcontent=productdownload,websoftware=07d54a46-c89d-11e9-9981-4556732441db"
    regex(%r{/FirmwareUpdateTool[._-]?(\d+(?:\.\d+)+)\.zip}i)
  end

  depends_on macos: ">= :high_sierra"

  app "FirmwareUpdateTool.app"
end
