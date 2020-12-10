cask "konica-minolta-bizhub-c650i-c360i-c4050i-c4000i-c3320i-driver" do
  version "2.0.11"
  sha256 :no_check

  url "https://dl.konicaminolta.eu/en/?tx_kmanacondaimport_downloadproxy[fileId]=e39160d6a9c69a0c8e54042f9e4f1ef3&tx_kmanacondaimport_downloadproxy[documentId]=122286&tx_kmanacondaimport_downloadproxy[system]=KonicaMinolta&tx_kmanacondaimport_downloadproxy[language]=EN&type=1558521685"
  name "Konica Minolta Bizhub C650i/C360i/C4050i/C4000i/C3320i PostScript Printer Driver"
  homepage "https://www.konicaminolta.eu/eu-en/support/download-centre"

  depends_on macos: ">= :yosemite"

  pkg "OS_10_10_x/A4/C650i_C360i_C4050i_C4000i_C3320i.pkg"

  uninstall pkgutil: "jp.konicaminolta.print.package.C650i"
end
