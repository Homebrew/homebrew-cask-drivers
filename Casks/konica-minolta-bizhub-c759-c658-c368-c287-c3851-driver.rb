cask "konica-minolta-bizhub-c759-c658-c368-c287-c3851-driver" do
  version "11.1.1"
  sha256 :no_check

  url "https://dl.konicaminolta.eu/en/?tx_kmanacondaimport_downloadproxy[fileId]=3381071352104e842f8efcdc14230488&tx_kmanacondaimport_downloadproxy[documentId]=1616&tx_kmanacondaimport_downloadproxy[system]=KonicaMinolta&tx_kmanacondaimport_downloadproxy[language]=EN&type=1558521685"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://dl.konicaminolta.eu/en/?tx_kmanacondaimport_downloadproxy[fileId]=3381071352104e842f8efcdc14230488%26tx_kmanacondaimport_downloadproxy[documentId]=1616%26tx_kmanacondaimport_downloadproxy[system]=KonicaMinolta%26tx_kmanacondaimport_downloadproxy[language]=EN%26type=1558521685",
          must_contain: version.no_dots
  name "KONICA MINOLTA bizhub C759/C658/C368/C287/C3851 Series Printer"
  homepage "https://www.konicaminolta.eu/en/business-solutions/support/download-center.html"

  pkg "Letter/C759_C658_C368_C287_C3851_109.pkg"

  uninstall pkgutil: "jp.konicaminolta.print.package.C759"
end
