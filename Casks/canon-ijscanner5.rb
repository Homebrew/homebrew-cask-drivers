cask "canon-ijscanner5" do
  version "4.0.0a,19_2"
  sha256 "0536afffbbaf8fdb76eeefdbc67f0778ed832a25e1e133ac4c3b987674535b59"

  url "https://gdlp01.c-wss.com/gds/2/0100006582/02/misd-mac-ijscanner5-#{version.before_comma.dots_to_underscores.delete_suffix("a")}-ea#{version.after_comma}.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon Scanner ICA Driver for Canon E610, MX390, MX450, MX520, MX720, MX920 series"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/details/printers/inkjet-multifunction/mx-series-inkjet/mx392?tab=drivers_downloads&subtab=downloads-drivers"

  pkg "Canon IJScanner5_#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.canonijscanner5.#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}"
end
