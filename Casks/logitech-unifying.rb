cask "logitech-unifying" do
  version "1.3.375"
  sha256 "82fe3df612e775ec8789fa821f4f62d4b3a55278276d03474580fee668ee50b7"

  url "https://download01.logi.com/web/ftp/pub/controldevices/unifying/unifying#{version}_mac.zip"
  name "Logitech Unifying Software"
  desc "Utility for pairing devices with Unifying receivers"
  homepage "https://support.logi.com/hc/en-001/articles/360025297913-Unifying-Software"

  livecheck do
    url "https://support.logi.com/api/v2/help_center/en-us/articles.json?label_names=webcontent=productdownload,websoftware=ec9eb8f1-8e0b-11e9-a62b-5b664cf4d3da"
    regex(/unifying(\d+(?:\.\d+)+)_mac\.zip/i)
  end

  pkg "Unifying Installer.app/Contents/Resources/Logitech Unifying Signed.mpkg"

  uninstall pkgutil: [
              "com.Logitech.Unifying Software.pkg",
              "com.Logitech.Updater.pkg",
            ],
            delete:  "/Applications/Utilities/Logitech Unifying Software.app",
            quit:    "com.logitech.unifying.assistant"

  zap trash: [
    "/Library/Application Support/Logitech.localized",
    "~/Library/Caches/com.Logitech.Updater",
    "~/Library/Preferences/com.Logitech.Updater.plist",
    "~/Library/Preferences/com.logitech.unifying.assistant.plist",
  ]
end
