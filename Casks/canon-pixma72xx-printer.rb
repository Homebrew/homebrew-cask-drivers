cask "canon-pixma72xx-printer" do
  version "16.40.1.0,21.3"
  sha256 "5d540b37b54892cf221118caceef32ffe16dd2e2b1330d2b9cc95d3f3819c46d"

  url "https://gdlp01.c-wss.com/gds/8/0100005558/08/mcpd-mac-ip7200-#{version.csv.first.dots_to_underscores}-ea#{version.csv.second.dots_to_underscores}.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon Pixma 72XX Printer Driver & Utilities"
  desc "Printer driver & utilities for Canon Pixma iP 72XX printers"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/drivers-downloads"

  livecheck do
    skip "No version information available"
  end

  pkg "PrinterDriver_iP7200 series_#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.iP7200-#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}"
end
