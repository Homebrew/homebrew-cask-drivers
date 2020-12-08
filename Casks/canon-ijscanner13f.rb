cask "canon-ijscanner13f" do
  version "4.1.3a,21_3"
  sha256 "9b094e778250a139dca8b157bd0d85cdc1f7f92cc4d1bc8ce775404905ea89d5"

  url "https://gdlp01.c-wss.com/gds/4/0100006584/04/misd-mac-ijscanner13f-#{version.before_comma.dots_to_underscores.delete_suffix("a")}-ea#{version.after_comma}.dmg",
    verified: "gdlp01.c-wss.com/gds/"
  name "Canon Scanner ICA Driver for Canon MG2400, MG2500, MG3500, MG5500, MG6400, MG6500, MG7100, P200 series"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/details/printers/inkjet-multifunction/mg-series-inkjet/mg2420?tab=drivers_downloads&subtab=downloads-drivers"

  pkg "Canon IJScanner13f_#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.canonijscanner13f.#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}"
end
