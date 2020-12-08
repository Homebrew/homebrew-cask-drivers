cask "canon-ijscanner6" do
  version "4.1.4a,21_3"
  sha256 "d0d240b13ca33d4b34d92eba0a6dcb9475c9cc2abf4b63aeeb3d05a476598cb9"

  url "https://gdlp01.c-wss.com/gds/3/0100006583/04/misd-mac-ijscanner6-#{version.before_comma.dots_to_underscores.delete_suffix("a")}-ea#{version.after_comma}.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon Scanner ICA Driver for CanoScan LiDE 120, LiDE 220"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/details/scanners/photo-scanner/canoscan-lide-120?tab=drivers_downloads&subtab=downloads-drivers"

  pkg "Canon IJScanner6_#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.canonijscanner6.#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}"
end
