cask 'apple-hewlettpackardprinterdrivers' do
  version '5.1'
  sha256 '788e26e8afbfcf03d36f45e8563b1cd24183d6a8772b995914072189a714bd22'

  url "https://support.apple.com/downloads/DL1888/en_US/HewlettPackardPrinterDrivers#{version}.dmg"
  name 'HP Printer Drivers'
  homepage 'https://support.apple.com/kb/DL1888'

  pkg 'HewlettPackardPrinterDrivers.pkg'

  uninstall pkgutil: [
                       'com.apple.pkg.HewlettPackardPrinterDrivers',
                       'com.apple.pkg.HewlettPackardPrinterDriversPreInstall',
                     ]
end
