cask "microsoft-intellipoint" do
  version "8.2"
  sha256 :no_check

  url "https://download.microsoft.com/download/B/1/0/B109F931-70E2-425F-8681-EAAB75845AB8/Microsoft-Mouse_d305.dmg"
  name "Microsoft IntelliPoint"
  homepage "https://www.microsoft.com/accessories/mice"

  pkg "Microsoft Mouse Installer.app/Contents/Resources/Microsoft Mouse.pkg"

  uninstall kext:    [
              "com.microsoft.driver.MicrosoftMouse",
              "com.microsoft.driver.MicrosoftMouseBluetooth",
              "com.microsoft.driver.MicrosoftMouseUSB",
            ],
            pkgutil: "com.microsoft.mouse.installer",
            delete:  "/Library/PreferencePanes/Microsoft Mouse.prefPane"

  caveats do
    discontinued
  end
end
