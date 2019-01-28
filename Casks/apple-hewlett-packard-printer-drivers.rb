cask 'apple-hewlett-packard-printer-drivers' do
  version '5.1'
  sha256 '788e26e8afbfcf03d36f45e8563b1cd24183d6a8772b995914072189a714bd22'

  url "https://support.apple.com/downloads/DL1888/en_US/HewlettPackardPrinterDrivers#{version}.dmg"
  appcast 'https://support.apple.com/downloads/hewlett%2520packard'
  name 'HP Printer Drivers'
  homepage 'https://support.apple.com/kb/DL1888'

  depends_on macos: '<= :high_sierra'

  pkg 'HewlettPackardPrinterDrivers.pkg'

  uninstall quit:    [
                       'com.hp.HP-Scanner',
                       'com.hp.HPAiOScan',
                       'com.hp.HPAiOTulip',
                       'com.hp.HPDOT4Scan',
                       'com.hp.HPM1210_1130.HP_LaserJet_Professional_Utility',
                       'com.hp.HPSOAPScan',
                       'com.hp.HP_LaserJet_Professional_Utility',
                       'com.hp.LEDMScan',
                       'com.hp.ScanService',
                       'com.hp.aio.faxarchive',
                       'com.hp.customer.uploader',
                       'com.hp.event.status.handler.generic',
                       'com.hp.events.*',
                       'com.hp.hpalerts.plugin.*',
                       'com.hp.printerutility*',
                       'com.hp.productresearch*',
                       'com.hp.scan*',
                       'com.hp.scanModule*',
                     ],
            pkgutil: [
                       'com.apple.pkg.HewlettPackardPrinterDrivers',
                       'com.apple.pkg.HewlettPackardPrinterDriversPreInstall',
                     ]
end
