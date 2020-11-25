cask "logitech-control-center" do
  version "3.9.14"
  sha256 "41839c121b0df080329de1879ce52a1130cd8fe265b602ca877fe383d8cfd0fe"

  url "https://www.logitech.com/pub/techsupport/mouse/mac/lcc#{version}.zip"
  appcast "https://support.logi.com/api/v2/help_center/en-us/articles.json?label_names=webcontent=productdownload,websoftware=ebdfd5a3-8e0b-11e9-a62b-d1e7600b0d0b"
  name "Logitech Control Center"
  homepage "https://support.logitech.com/en_us/product/3129"

  depends_on macos: ">= :high_sierra"

  pkg "LCC Installer.app/Contents/Resources/Logitech Control Center.mpkg"

  uninstall script:  {
    executable: "/Applications/Utilities/LCC Uninstaller.app/Contents/Resources/LCC Uninstaller Tool",
  },
            pkgutil: [
              "com.Logitech.Control Center.pkg",
              "com.Logitech.Unifying Software.pkg",
              "com.Logitech.Updater.pkg",
            ]

  caveats do
    kext
    reboot
  end
end
