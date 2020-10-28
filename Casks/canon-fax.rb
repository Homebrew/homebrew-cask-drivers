cask "canon-fax" do
  version "4.15.6"
  sha256 "14d274075bd9818525c2ceb72f64b412731a058f2832740f5dd1a33bb838da58"

  # gdlp01.c-wss.com/gds/ was verified as official when first introduced to the cask
  url "https://gdlp01.c-wss.com/gds/3/0100010683/04/mac-fax-v#{version.delete(".")}-01.dmg"
  name "Canon Fax Driver & Utilities"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/details/printers/color-laser/color-imageclass-mf634cdw/color-imageclass-mf634cdw"

  depends_on macos: ">= :yosemite"

  pkg "Canon_FAX_Installer.pkg"

  uninstall pkgutil: "jp.co.canon.CUPSFAX.+"
end
