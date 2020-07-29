cask "prolific-pl2303" do
  version "2.0.0_20191204,2.0.0_20191112"
  sha256 "e9fdc23d34df7da62e27819906de7d5cf6f0b78d81b3ffe91f9e8c7baf650897"

  url "http://www.prolific.com.tw/UserFiles/files/PL2303HXD_G_Driver_v#{version.before_comma.dots_to_underscores}.zip"
  name "Prolific USB to Serial Cable driver"
  homepage "http://www.prolific.com.tw/US/"

  pkg "PL2303HXD_G_Driver_v#{version.after_comma}.pkg"

  uninstall kext:    "com.prolific.driver.PL2303",
            pkgutil: [
              "com.Susteen.driver.PL2303",
              "com.prolific.driver.PL2303",
            ],
            delete:  [
              "/Library/Extensions/ProlificUsbSerial.kext",
              "/var/db/receipts/*PL2303*.*",
              "/var/db/receipts/*ProlificUSbSerial*.*",
            ]
end
