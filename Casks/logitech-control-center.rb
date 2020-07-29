cask "logitech-control-center" do
  version "3.9.11"
  sha256 "18de9f8ae8461df57f6cc9e9f1f443674891ca94d71cb7d7dc0f4c94c32fb2c9"

  url "https://www.logitech.com/pub/techsupport/mouse/mac/lcc#{version}.zip"
  appcast "https://support.logi.com/api/v2/help_center/en-us/articles.json"
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
