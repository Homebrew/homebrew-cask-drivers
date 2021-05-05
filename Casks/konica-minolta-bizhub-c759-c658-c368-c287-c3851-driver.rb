cask "konica-minolta-bizhub-c759-c658-c368-c287-c3851-driver" do
  version "11.7.0A"
  sha256 :no_check

  url "https://dl.konicaminolta.eu/en/?tx_kmanacondaimport_downloadproxy[fileId]=cbeeb8a37c48e4fe49180b4543df08bf&tx_kmanacondaimport_downloadproxy[documentId]=127275&tx_kmanacondaimport_downloadproxy[system]=KonicaMinolta&tx_kmanacondaimport_downloadproxy[language]=EN&type=1558521685"
  name "KONICA MINOLTA bizhub C759/C658/C368/C287/C3851 Series Printer"
  homepage "https://www.konicaminolta.eu/en/business-solutions/support/download-center.html"

  livecheck do
    skip "unversioned URL"
  end

  pkg "C759_C658_C368_C287_C3851_#{version.major}.pkg"

  uninstall pkgutil: "jp.konicaminolta.print.package.C759"
end
