cask "canon-mf-printer" do
  version "10.11.8"
  sha256 "d5f10278e0dd91a898757299adb4a566e5f14e6ad073c885da268768b7b8172e"

  url "https://gdlp01.c-wss.com/gds/3/0100011243/02/mac-mf-v#{version.no_dots}-00.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon MF Printer Driver & Utilities"
  desc "Printer driver & utilities for Canon imageCLASS MF printers"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/drivers-downloads"

  depends_on macos: ">= :yosemite"

  pkg "MF_Printer_Installer.pkg"

  uninstall pkgutil: "jp.co.canon.CUPSMFPrinter.*"
end
