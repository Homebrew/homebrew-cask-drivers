cask "canon-scangear-mf" do
  version "2.15.9"
  sha256 "ff5d80d992a0f8b003104ffdc1bdf36bfe8bce0aa49cce77b27cdc9a95a5776c"

  url "https://gdlp01.c-wss.com/gds/9/0100010989/04/mac-scan-v#{version.no_dots}-00.dmg"
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
