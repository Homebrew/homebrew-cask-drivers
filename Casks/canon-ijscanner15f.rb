cask "canon-ijscanner15f" do
  version "4.1.3a,21_3"
  sha256 "7e522b30cdbcd4e000b0bd1a25f9382439926983379f7ed5cc416bc84cb83f8b"

  url "https://gdlp01.c-wss.com/gds/3/0100006713/04/misd-mac-ijscanner15f-#{version.csv.first.dots_to_underscores.delete_suffix("a")}-ea#{version.csv.second}.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon Scanner ICA Driver for Canon G2000, G3000, MG3600, MG5700, MG6800, MG6900, MG7700 series"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/details/printers/inkjet-multifunction/mg-series-inkjet/pixma-mg3620?tab=drivers_downloads&subtab=downloads-drivers"

  pkg "Canon IJScanner15f_#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.canonijscanner15f.#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}"
end
