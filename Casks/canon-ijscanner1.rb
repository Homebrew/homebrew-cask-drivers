cask "canon-ijscanner1" do
  version "4.0.0a,19_2"
  sha256 "4c6c7b1549b8c400addc5d2bd2454b01dc8cff567bb17e2343240d9cba201d6a"

  url "https://gdlp01.c-wss.com/gds/7/0100006587/02/misd-mac-ijscanner1-#{version.before_comma.dots_to_underscores.delete_suffix("a")}-ea#{version.after_comma}.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon Scanner ICA Driver for Canon E500, E600, MG2100, MG3100, MG4100, MG5100, MG5200, MG5300, MG6100, MG6200, MG8100, MG8200, MP190, MP210, MP220, MP240, MP250, MP260, MP270, MP280, MP470, MP480, MP490, MP493, MP495, MP520, MP540, MP550, MP560, MP610, MP620, MP630, MP640, MP970, MP980, MP990, MX300, MX310, MX320, MX330, MX340, MX350, MX360, MX370, MX410, MX420, MX430, MX510, MX700, MX710, MX7600, MX850, MX860, MX870, MX880, MX890 series"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/details/printers/support-inkjet-printer/mg-series/pixma-mg2120?tab=drivers_downloads&subtab=downloads-drivers"

  pkg "Canon IJScanner1_#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.canonijscanner1.#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}"
end
