cask 'apple-brotherprinterdrivers' do
  version '4.1.1'
  sha256 '4f12496a351ecf2da717239c4c85a311401ddd465a036f4c175cfcc74abf58f6'

  url "http://support.apple.com/downloads/DL1927/en_US/brotherprinterdrivers#{version}.dmg"
  name 'Brother Printer Drivers'
  homepage 'https://support.apple.com/kb/DL1927'

  pkg 'BrotherPrinterDrivers.pkg'

  uninstall pkgutil: 'com.apple.pkg.BrotherPrinterDrivers'
end
