cask "apple-hewlett-packard-printer-drivers" do
  version "5.1,2019,041-88763-20191011-6e70f498-9d39-420c-b11b-b252b17233e2"
  sha256 "e81f73e8d14e417c99904e7756a13376a19750aa65d81b7167a6ab66f96af687"

  url "https://updates.cdn-apple.com/#{version.after_comma.before_comma}/cert/#{version.after_comma.after_comma}/HewlettPackardPrinterDrivers.dmg",
      verified: "updates.cdn-apple.com/"
  appcast "https://support.apple.com/kb/DL1888"
  name "HP Printer Drivers"
  homepage "https://support.apple.com/kb/DL1888"

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
