cask "apple-hewlett-packard-printer-drivers" do
  version "5.1,2020,001-41745-20201210-DBC9B46B-88B2-4032-87D9-449AF1D20804"
  sha256 "9ee54766e32cdd3ce6a0ff019aad02400eac66fc669c991f47a6c37379cf8fac"

  url "https://updates.cdn-apple.com/#{version.after_comma.before_comma}/macos/#{version.after_comma.after_comma}/HewlettPackardPrinterDrivers.dmg",
      verified: "updates.cdn-apple.com/"
  name "HP Printer Drivers"
  desc "HP printing and scanning software"
  homepage "https://support.apple.com/kb/DL1888"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      version = page.match(/"strTitle":.*?v(\d+(?:\.\d+)*)\s*for\s*macOS/i)
      metaurl = page.match(%r{"metaUrl":.*?/(\d+)/macos/([\dA-F]+(?:-[\dA-F]+)*)/HewlettPackardPrinterDrivers\.dmg}i)
      "#{version[1]},#{metaurl[1]},#{metaurl[2]}"
    end
  end

  pkg "HewlettPackardPrinterDrivers.pkg"

  uninstall quit:    [
    "com.hp.HP-Scanner",
    "com.hp.HPAiOScan",
    "com.hp.HPAiOTulip",
    "com.hp.HPDOT4Scan",
    "com.hp.HPM1210_1130.HP_LaserJet_Professional_Utility",
    "com.hp.HPSOAPScan",
    "com.hp.HP_LaserJet_Professional_Utility",
    "com.hp.LEDMScan",
    "com.hp.ScanService",
    "com.hp.aio.faxarchive",
    "com.hp.customer.uploader",
    "com.hp.devicemodel.hpdot4d",
    "com.hp.devicemonitor.*",
    "com.hp.dm.hpdot4d",
    "com.hp.event.status.handler.generic",
    "com.hp.events.*",
    "com.hp.hpalerts.plugin.*",
    "com.hp.printerutility.*",
    "com.hp.productresearch.*",
    "com.hp.scan.*",
    "com.hp.scanModule.*",
  ],
            signal:  ["TERM", "com.hp.printerutility"],
            kext:    "com.hp.kext.io.enabler.compound",
            pkgutil: [
              "com.apple.pkg.HewlettPackardPrinterDrivers",
              "com.apple.pkg.HewlettPackardPrinterDriversPreInstall",
            ],
            delete:  [
              "/Library/Extensions/hp_io_enabler_compound.kext",
              "/Library/Printers/hp/hpio",
            ],
            rmdir:   "/Library/Printers/hp"

  zap trash: [
    "~/Library/Application Support/HP/Product Improvement Study",
    "~/Library/Logs/hp/HP Product Research.log",
    "~/Library/Preferences/com.hp.HP-Scanner.plist",
    "~/Library/Preferences/com.hp.printerutility.plist",
    "~/Library/Preferences/com.hp.scanModule.plist",
    "~/Library/Preferences/com.hp.scanModule3.plist",
    "~/Library/Saved Application State/com.hp.printerutility.savedState",
  ],
      rmdir: [
        "~/Library/Application Support/HP",
        "~/Library/Logs/hp",
      ]

  caveats do
    reboot
  end
end
