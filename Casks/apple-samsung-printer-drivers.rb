cask 'apple-samsung-printer-drivers' do
  version '2.6'
  sha256 'ecf283ff40df816e84d3a6148676114d2b4fe3f4074feb995c2c7e0be8be4964'

  url "https://support.apple.com/downloads/DL905/en_US/SamsungPrinterDrivers#{version}.dmg"
  name 'Samsung Printer Drivers'
  homepage 'https://support.apple.com/kb/dl905'

  pkg 'SamsungPrinterDrivers.pkg'

  uninstall quit:    'com.samsung.imagecapture.scanner.app',
            pkgutil: 'com.apple.pkg.SamsungPrinterDrivers'
end
