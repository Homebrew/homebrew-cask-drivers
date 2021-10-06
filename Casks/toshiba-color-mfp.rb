cask "toshiba-color-mfp" do
  version "7.113.0.4,18996"
  sha256 "c23ae72688a548b539b5db46acbed52deebe0a616441e3b6ad8ea19acdc0bf8d"

  url "https://business.toshiba.com/downloads/KB/f1Ulds/#{version.after_comma}/TOSHIBA_ColorMFP.dmg.gz"
  name "Toshiba ColorMFP Drivers"
  desc "Drivers for Toshiba ColorMFP devices"
  homepage "https://business.toshiba.com/support"

  livecheck do
    url "http://business.toshiba.com/support/downloads/GetDownloads.jsp?model=5015"
    strategy :page_match do |page|
      version = page.match(/"MacDC",.*?"id":"(\d+)",.*?"versionName":"(\d+(?:\.\d+)*)",/)
      "#{version[2]},#{version[1]}"
    end
  end

  pkg "TOSHIBA ColorMFP.pkg"

  uninstall pkgutil: "com.toshiba.pde.x7.colormfp",
            delete:  [
              "/Library/Printers/PPDs/Contents/Resources/TOSHIBA_ColorMFP*.gz",
              "/Library/Printers/toshiba",
            ]
end
