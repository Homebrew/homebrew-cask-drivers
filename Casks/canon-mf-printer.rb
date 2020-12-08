cask "canon-mf-printer" do
  version "10.11.4"
  sha256 "2d8919b41ab9a9d5d51d86b8dea277e9dd12e2e3e8aeb98b89e670bf65c14509"

  url "https://gdlp01.c-wss.com/gds/3/0100010873/01/mac-mf-v#{version.no_dots}-00.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon MF Printer Driver & Utilities"
  desc "Printer driver & utilities for Canon imageCLASS MF printers"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/drivers-downloads"

  depends_on macos: ">= :yosemite"

  pkg "MF_Printer_Installer.pkg"

  uninstall pkgutil: "jp.co.canon.CUPSMFPrinter.*"
end
