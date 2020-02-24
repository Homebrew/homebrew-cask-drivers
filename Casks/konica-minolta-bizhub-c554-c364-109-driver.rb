cask 'konica-minolta-bizhub-c554-c364-109-driver' do
  version '5.9.1'
  sha256 'a62b85b5495fa3d4c47385089c7eb79f4c929a8f274934f8f8f0094c918f4b01'

  url 'https://p.knova.konicaminolta.com/PublicDownload/download?fileId=C39EEDB0-C408-473C-876F-222475A7D7AE'
  name 'Konica Minolta Bizhub C554/C364 Postscript Printer Driver'
  homepage 'https://www.biz.konicaminolta.com/download/driver.html'

  pkg "C554_C364_Series_v#{version}_A4/bizhub_C554_C364_109.pkg"

  uninstall pkgutil: 'jp.konicaminolta.print.package.C554'
end
