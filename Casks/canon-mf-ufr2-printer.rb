cask "canon-mf-ufr2-printer" do
  version "10.19.11"
  sha256 "0f53fae19e0d86f5dad9e95bef02c8f9406769c635e54ac210c6d8ab9f8e11d3"

  url "https://gdlp01.c-wss.com/gds/8/0100011348/02/mac-UFRII-LIPSLX-v#{version.no_dots}-11.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon MF UFRII/UFRII LT Printer Driver & Utilities"
  desc "Printer UFRII/UFRII LT driver & utilities for Canon imageCLASS MF printers"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/drivers-downloads"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :el_capitan"

  pkg "UFRII_LT_LIPS_LX_Installer.pkg"

  uninstall pkgutil: [
    "jp.co.canon.CUPSMFPrinter.*",
    "jp.co.canon.CUPSPrinter.*",
  ]
end
