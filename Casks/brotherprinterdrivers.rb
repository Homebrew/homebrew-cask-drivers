cask 'brotherprinterdrivers' do
  version :latest
  sha256 :no_check

  url 'http://support.apple.com/downloads/DL1881/en_US/brotherprinterdrivers.dmg'
  name 'Brother Printer Drivers'
  homepage 'https://support.apple.com/kb/DL1881'

  pkg 'BrotherPrinterDrivers.pkg'

  uninstall pkgutil: 'com.apple.pkg.BrotherPrinterDrivers'
end
