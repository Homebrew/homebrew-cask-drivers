cask "xerox-print-driver" do
  if MacOS.version <= :yosemite
    version "3.123.0_1865"
    sha256 "ac9c013705742538c0faa5df2194e3a7d4fb9980dd0570e41b213ff87172ee6c"
    url "https://download.support.xerox.com/pub/drivers/CQ8570/drivers/macosx1010/ar/XeroxPrintDriver_#{version}.dmg"
  elsif MacOS.version <= :el_capitan
    version "4.17.1_1980"
    sha256 "36b1ddf1f598ceaf6f91d38b0d228be3f8f6188c251761424cbea7a869488883"
    url "https://download.support.xerox.com/pub/drivers/CQ8570/drivers/macosx1011/pt_BR/XeroxPrintDriver_#{version}.dmg"
  elsif MacOS.version <= :sierra
    version "5.2.0_2115"
    sha256 "9989b6c127fca8c97b24bd86fd4d20035cd094c69e3fd41f6a243361f86483ec"
    url "https://download.support.xerox.com/pub/drivers/CQ8570/drivers/macos1012/pt_BR/XeroxPrintDriver_#{version}.dmg"
  else
    version "5.5.9_2180"
    sha256 "24e700fedf39391d9df3310d34dcf98cfe4b6e46acfead09903c8befd10b1345"
    url "https://download.support.xerox.com/pub/drivers/BALTORO_HF/drivers/macOS10_13/pt_BR/XeroxDrivers_#{version}.dmg"
  end

  name "Xerox Print Driver"
  desc "Drivers for Xerox printers"
  homepage "https://www.support.xerox.com/en-us/product/colorqube-8570/downloads"

  livecheck do
    url :homepage
    regex(/XeroxDrivers[._-](\d+(?:\.\d+)*_\d+)\.dmg/i)
  end

  if MacOS.version <= :sierra
    pkg "Xerox Print Driver #{version.sub(/_.*/, "")}.pkg"
  else
    pkg "Xerox Drivers #{version.sub(/_.*/, "")}.pkg"
  end

  uninstall launchctl: [
    "com.aviatainc.powerengage.XRTK",
    "com.aviatainc.powerengage.helper.XRTK",
  ],
            quit:      "com.aviatainc.powerengage.EngageLauncher",
            pkgutil:   [
              "com.xerox.drivers.pkg",
              "com.xerox.installer.addprintqueue",
              "com.xerox.installer.finishup",
              "com.xerox.print.xeroxPrinter.pkg",
            ],
            delete:    "/Library/Caches/Xerox",
            rmdir:     "/Library/Application Support/Xerox"

  zap pkgutil: "com.xerox.drivers.pkg",
      trash:   "~/Library/Application Support/PowerENGAGE/XEROX"
end
