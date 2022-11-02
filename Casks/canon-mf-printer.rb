cask "canon-mf-printer" do
  version "10.11.9"
  sha256 "d4ab0de22da71f2644d7474784ced5e0b4ed8c2eefb47b3c3c0f2cd6538b466b"

  url "https://gdlp01.c-wss.com/gds/2/0100011582/01/mac-mf-v#{version.no_dots}-00.dmg",
      verified: "gdlp01.c-wss.com"
  name "Canon MF Printer Driver & Utilities"
  desc "Printer driver & utilities for Canon imageCLASS MF printers"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/drivers-downloads"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :el_capitan"

  pkg "MF_Printer_Installer.pkg"

  uninstall pkgutil: "jp.co.canon.CUPSMFPrinter.*"
end
