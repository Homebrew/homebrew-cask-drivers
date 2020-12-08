cask "canon-ijscanner14f" do
  version "4.1.3a,21_3"
  sha256 "bd925c9ab7e28ed24262c2a691f2c7695c691582f2ec5aa73f589e70e0001bbe"

  url "https://gdlp01.c-wss.com/gds/6/0100006586/03/misd-mac-ijscanner14f-#{version.before_comma.dots_to_underscores.delete_suffix("a")}-ea#{version.after_comma}.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon Scanner ICA Driver for Canon E460, MB2000, MB2300, MB5000, MB5300, MG2900, MG5600, MG6600, MG6700, MG7500 series"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/details/printers/small-office-home-office-printers/mb2020?tab=drivers_downloads&subtab=downloads-drivers"

  pkg "Canon IJScanner14f_#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.canonijscanner14f.#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}"
end
