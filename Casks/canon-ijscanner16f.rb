cask "canon-ijscanner16f" do
  version "4.3.4a,21_3"
  sha256 "3433cd6dbdc3e4bb84c4c6bacadc6bb2c8630fc83e3fc49ce1dbd84c91b5765c"

  url "https://gdlp01.c-wss.com/gds/5/0100007645/04/misd-mac-ijscanner16f-#{version.csv.first.dots_to_underscores.delete_suffix("a")}-ea#{version.csv.second}.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon Scanner ICA Driver for Canon E410, E470, G4000, MG3000, TS5000, TS6000, TS8000, TS9000 series"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/details/printers/inkjet-multifunction/mg-series-inkjet/mg3020-bk?tab=drivers_downloads&subtab=downloads-drivers"

  pkg "Canon IJScanner16f_#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.canonijscanner16f.#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}"
end
