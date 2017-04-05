cask 'brotherprinterdrivers' do
  version '4.1'
  sha256 'b6cf4890115bc488436abab7d4348987b8f37aaef915f38060b459db28a74e88'

  url 'http://support.apple.com/downloads/DL1881/en_US/brotherprinterdrivers.dmg'
  name 'Brother Printer Drivers'
  homepage 'https://support.apple.com/kb/DL1881'

  pkg 'BrotherPrinterDrivers.pkg'

  uninstall pkgutil: 'com.apple.pkg.BrotherPrinterDrivers'
end
