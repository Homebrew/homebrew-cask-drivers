cask "konica-minolta-bizhub-c220-c280-c360-driver" do
  version "3.11.0"
  sha256 :no_check

  url "https://dl.konicaminolta.eu/en/?tx_kmanacondaimport_downloadproxy[fileId]=9417996e51b61744d50204a9201cfa60&tx_kmanacondaimport_downloadproxy[documentId]=40940&tx_kmanacondaimport_downloadproxy[system]=KonicaMinolta&tx_kmanacondaimport_downloadproxy[language]=EN&type=1558521685"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://dl.konicaminolta.eu/en/?tx_kmanacondaimport_downloadproxy[fileId]=9417996e51b61744d50204a9201cfa60%26tx_kmanacondaimport_downloadproxy[documentId]=40940%26tx_kmanacondaimport_downloadproxy[system]=KonicaMinolta%26tx_kmanacondaimport_downloadproxy[language]=EN%26type=1558521685",
          must_contain: version.no_dots
  name "Konica Minolta Bizhub C220/C280/C360 PostScript Printer Driver"
  homepage "https://www.konicaminolta.eu/en/business-solutions/support/download-center.html"

  pkg "bizhub_C360_109.pkg"

  uninstall pkgutil: "jp.konicaminolta.print.package.C360"
end
