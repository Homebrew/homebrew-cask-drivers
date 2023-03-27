cask "konica-minolta-bizhub-c759-c658-c368-c287-c3851-driver" do
  on_catalina :or_older do
    version "11.6.0"
    sha256 :no_check

    url "https://dl.konicaminolta.eu/en/?tx_kmanacondaimport_downloadproxy[fileId]=08e8308b1e134d6bb6837e3b046b126b&tx_kmanacondaimport_downloadproxy[documentId]=122431&tx_kmanacondaimport_downloadproxy[system]=KonicaMinolta&tx_kmanacondaimport_downloadproxy[language]=EN&type=1558521685"

    pkg "C759_C658_C368_C287_C3851_Series_v#{version}_Letter/C759_C658_C368_C287_C3851.pkg"
  end
  on_big_sur :or_newer do
    version "11.8.0A"
    sha256 :no_check

    url "https://dl.konicaminolta.eu/en?tx_kmanacondaimport_downloadproxy[fileId]=7228bd01e7674417c6a223ce7a186487&tx_kmanacondaimport_downloadproxy[documentId]=130160&tx_kmanacondaimport_downloadproxy[system]=KonicaMinolta&tx_kmanacondaimport_downloadproxy[language]=EN&type=1558521685"

    pkg "C759_C658_C368_C287_C3851_#{version.major}.pkg"
  end

  name "KONICA MINOLTA bizhub C759/C658/C368/C287/C3851 Series Printer"
  desc "Drivers for Konica Monolta Bizhub printers"
  homepage "https://www.konicaminolta.eu/en/business-solutions/support/download-center.html"

  livecheck do
    skip "unversioned URL"
  end

  depends_on macos: ">= :sierra"

  uninstall pkgutil: "jp.konicaminolta.print.package.C759"
end
