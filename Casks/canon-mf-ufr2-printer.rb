cask "canon-mf-ufr2-printer" do
  version "10.19.13"
  sha256 "11e32221671b4622f97e89f6ec1c80b38f6f507558baf90f8bb82ca343583d64"

  url "https://gdlp01.c-wss.com/gds/1/0100011351/05/mac-UFRII-LIPSLX-v#{version}-18.dmg",
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
