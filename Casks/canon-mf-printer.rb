cask "canon-mf-printer" do
  version "10.11.6"
  sha256 "cded9cbfc4ad45f03258066fc96b3a7c2ee0f4e486043813b9242e3fd568c078"

  url "https://gdlp01.c-wss.com/gds/3/0100010873/03/mac-mf-v#{version.no_dots}-00.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon MF Printer Driver & Utilities"
  desc "Printer driver & utilities for Canon imageCLASS MF printers"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/drivers-downloads"

  depends_on macos: ">= :yosemite"

  pkg "MF_Printer_Installer.pkg"

  uninstall pkgutil: "jp.co.canon.CUPSMFPrinter.*"
end
