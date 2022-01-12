cask "canon-ijscanner2" do
  version "4.1.4a,21_3"
  sha256 "8aabe1d9d5d48950c84aa1bdd24eb3f7a4fcd463d51889065e963564b0e91848"

  url "https://gdlp01.c-wss.com/gds/9/0100006579/03/misd-mac-ijscanner2-#{version.csv.first.dots_to_underscores.delete_suffix("a")}-ea#{version.csv.second}.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon Scanner ICA Driver for CanoScan 5600F, 9000F, LiDE 100, LiDE 110, LiDE 200, LiDE 210, LiDE 700F"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/details/scanners/film-negative-scanner/canoscan-5600f?tab=drivers_downloads&subtab=downloads-drivers"

  pkg "Canon IJScanner2_#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.canonijscanner2.#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}"
end
