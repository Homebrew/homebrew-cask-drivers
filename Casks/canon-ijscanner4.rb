cask "canon-ijscanner4" do
  version "4.0.0a,19_2"
  sha256 "abf852e335ee47947becd99eddece2159fa293225096b083578a174ec1f08778"

  url "https://gdlp01.c-wss.com/gds/1/0100006581/02/misd-mac-ijscanner4-#{version.csv.first.dots_to_underscores.delete_suffix("a")}-ea#{version.csv.second}.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon Scanner ICA Driver for CanoScan 9000F Mark II"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/details/scanners/film-negative-scanner/canoscan-9000f-mark-ii?tab=drivers_downloads&subtab=downloads-drivers"

  pkg "Canon IJScanner4_#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.canonijscanner4.#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}"
end
