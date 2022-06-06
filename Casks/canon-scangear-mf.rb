cask "canon-scangear-mf" do
  version "2.15.6"
  sha256 "5efcaeccd8b1f1103d2bb966199a47fc50f0116996d987bd51178d61474c2151"

  url "https://gdlp01.c-wss.com/gds/8/0100010618/06/mac-scan-v#{version.no_dots}-00.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon Scanner Driver & Utilities"
  desc "Scanner driver & utilities for Canon imageCLASS MF printers"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/drivers-downloads"

  pkg "Canon_ScanGear_MF.pkg"

  uninstall launchctl: [
    "jp.co.canon.ScanGearMF.appl.Canon-MF-Scan-Agent",
    "jp.co.canon.ScanGearMF.appl.Canon-MFSU-Agent",
  ],
            pkgutil:   "jp.co.canon.ScanGearMF.*"
end
