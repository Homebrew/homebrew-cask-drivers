cask "epson-photo-plus" do
  version "3.7.0"
  sha256 "eaa02b81cb01aed495d2493fc062b909c9fb068a6ab8f867084fa4f227280c01"

  url "https://ftp.epson.com/drivers/EPPlus_#{version.no_dots}.dmg"
  name "Epson Photo+"
  desc "Arrange and print photos, including direct printing to discs"
  homepage "https://epson.com/"

  livecheck do
    url "https://epson.com/Support/Printers/Single-Function-Inkjet-Printers/SureColor-Series/Epson-SureColor-P900/s/SPT_C11CH37201"
    regex(/\s*Epson\sPhoto\+[\s(?:&nbsp;)]+v(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  pkg "Epson Photo Plus.pkg"

  uninstall pkgutil: "com.epson.pkg.EpsonPhotoPlus"
end
