cask "canon-scangear-mf" do
  version "2.15.4"
  sha256 "caee9018c9e7a41f5f45ff04a547eb4d6154e7c6a065779c6e680a4d75e17d62"

  # gdlp01.c-wss.com/gds/ was verified as official when first introduced to the cask
  url "https://gdlp01.c-wss.com/gds/8/0100010618/04/mac-scan-v#{version.delete(".")}-00.dmg"
  name "Canon Scanner Driver & Utilities"
  desc "The MF Scan Utility and MF Toolbox necessary for adding scanners are also installed. To find out which application the printer model you are using supports, refer to the Readme file."
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/details/printers/color-laser/color-imageclass-mf634cdw/color-imageclass-mf634cdw"

  depends_on macos: ">= :yosemite"

  pkg "Canon_ScanGear_MF.pkg"

  uninstall pkgutil: "jp.co.canon.ScanGearMF.+"
end
