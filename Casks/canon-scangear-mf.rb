cask "canon-scangear-mf" do
  version "2.15.4"
  sha256 "caee9018c9e7a41f5f45ff04a547eb4d6154e7c6a065779c6e680a4d75e17d62"

  url "https://gdlp01.c-wss.com/gds/8/0100010618/04/mac-scan-v#{version.no_dots}-00.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon Scanner Driver & Utilities"
  desc "Scanner driver & utilities for Canon imageCLASS MF printers"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/drivers-downloads"

  depends_on macos: ">= :yosemite"

  pkg "Canon_ScanGear_MF.pkg"

  uninstall launchctl: [
    "jp.co.canon.ScanGearMF.appl.Canon-MF-Scan-Agent",
    "jp.co.canon.ScanGearMF.appl.Canon-MFSU-Agent",
  ],
            pkgutil:   "jp.co.canon.ScanGearMF.*"
end
