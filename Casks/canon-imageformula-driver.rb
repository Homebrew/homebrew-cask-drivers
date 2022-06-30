cask "canon-imageformula-driver" do
  version "1.7.19.0917"
  sha256 :no_check

  url "https://files.canon-europe.com/files/soft01-48579/Driver/P215II_Installer.zip",
      verified: "files.canon-europe.com/files/soft01-48579/Driver/"
  name "Canon ImageFormula Twain Driver"
  homepage "https://www.canon.se/support/consumer_products/products/scanners/others/imageformula_p-215ii.html?type=drivers"

  depends_on macos: ">= :sierra"

  pkg "P215II_Installer.pkg"

  uninstall quit:    [
              "com.canonElectronics.Installer.scanserver.pkg",
              "com.canonElectronics.scanserver",
            ],
            pkgutil: [
              "com.canonElectronics.Installer.P215II Driver.pkg",
              "com.canonElectronics.Installer.scanserver.pkg",
            ]
end
