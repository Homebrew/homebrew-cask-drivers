cask "canon-fax" do
  version "4.15.6"
  sha256 "14d274075bd9818525c2ceb72f64b412731a058f2832740f5dd1a33bb838da58"

  url "https://gdlp01.c-wss.com/gds/3/0100010683/04/mac-fax-v#{version.no_dots}-01.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon Fax Driver & Utilities"
  desc "Fax driver & utilities for Canon imageCLASS MF printers"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/drivers-downloads"

  pkg "Canon_FAX_Installer.pkg"

  uninstall pkgutil: "jp.co.canon.CUPSFAX.*"
end
