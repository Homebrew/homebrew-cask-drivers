cask "canon-ijscanner3" do
  version "4.0.0a,19_2"
  sha256 "ce488fb4af9825ebdb6fae448136acee6f322bbd38aa861f4134716aa1694651"

  url "https://gdlp01.c-wss.com/gds/0/0100006580/02/misd-mac-ijscanner3-#{version.csv.first.dots_to_underscores.delete_suffix("a")}-ea#{version.csv.second}.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon Scanner ICA Driver for Canon E510, MG2200, MG3200, MG4200, MG5400, MG6300, MP230 series"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/details/printers/inkjet-multifunction/mg-series-inkjet/mg2220?tab=drivers_downloads&subtab=downloads-drivers"

  pkg "Canon IJScanner3_#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.canonijscanner3.#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}"
end
