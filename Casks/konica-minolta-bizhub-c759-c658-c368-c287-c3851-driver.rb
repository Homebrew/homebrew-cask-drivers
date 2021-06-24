cask "konica-minolta-bizhub-c759-c658-c368-c287-c3851-driver" do
  if MacOS.version <= :catalina
    version "11.6.0"
    sha256 :no_check

    url "https://dl.konicaminolta.eu/en/?tx_kmanacondaimport_downloadproxy[fileId]=08e8308b1e134d6bb6837e3b046b126b&tx_kmanacondaimport_downloadproxy[documentId]=122431&tx_kmanacondaimport_downloadproxy[system]=KonicaMinolta&tx_kmanacondaimport_downloadproxy[language]=EN&type=1558521685"
  else
    version "11.7.0A"
    sha256 :no_check

    url "https://dl.konicaminolta.eu/en/?tx_kmanacondaimport_downloadproxy[fileId]=cbeeb8a37c48e4fe49180b4543df08bf&tx_kmanacondaimport_downloadproxy[documentId]=127275&tx_kmanacondaimport_downloadproxy[system]=KonicaMinolta&tx_kmanacondaimport_downloadproxy[language]=EN&type=1558521685"
  end

  name "KONICA MINOLTA bizhub C759/C658/C368/C287/C3851 Series Printer"
  desc "Drivers for Konica Monolta Bizhub printers"
  homepage "https://www.konicaminolta.eu/en/business-solutions/support/download-center.html"

  livecheck do
    skip "unversioned URL"
  end

  depends_on macos: ">= :sierra"

  if MacOS.version <= :catalina
    pkg "C759_C658_C368_C287_C3851_Series_v#{version}_Letter/C759_C658_C368_C287_C3851.pkg"
  else
    pkg "C759_C658_C368_C287_C3851_#{version.major}.pkg"
  end

  uninstall pkgutil: "jp.konicaminolta.print.package.C759"
end
