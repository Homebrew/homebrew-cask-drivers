cask "konica-minolta-bizhub-c220-c280-c360-driver" do
  version "3.11.0"
  sha256 :no_check

  url "https://dl.konicaminolta.eu/en/?tx_kmanacondaimport_downloadproxy[fileId]=9417996e51b61744d50204a9201cfa60&tx_kmanacondaimport_downloadproxy[documentId]=40940&tx_kmanacondaimport_downloadproxy[system]=KonicaMinolta&tx_kmanacondaimport_downloadproxy[language]=EN&type=1558521685"
  name "Konica Minolta Bizhub C220/C280/C360 PostScript Printer Driver"
  homepage "https://www.konicaminolta.eu/en/business-solutions/support/download-center.html"

  livecheck do
    skip "unversioned URL"
  end

  pkg "bizhub_C360_109.pkg"

  uninstall pkgutil: "jp.konicaminolta.print.package.C360"
end
