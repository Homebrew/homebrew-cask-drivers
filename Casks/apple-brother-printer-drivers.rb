cask 'apple-brother-printer-drivers' do
  version '4.1.1'
  sha256 '4f12496a351ecf2da717239c4c85a311401ddd465a036f4c175cfcc74abf58f6'

  url "https://support.apple.com/downloads/DL1927/en_US/brotherprinterdrivers#{version}.dmg"
  appcast 'https://support.apple.com/downloads/brother'
  name 'Brother Printer Drivers'
  homepage 'https://support.apple.com/kb/DL1927'

  depends_on macos: '<= :mojave'

  pkg 'BrotherPrinterDrivers.pkg'

  uninstall quit:    [
                       'com.brother.MediaMonitor',
                       'com.brother.scanner.ica',
                       'com.brother.utilities.StatusMonitor',
                       'com.brother.utility.BrStatusMonitor',
                     ],
            pkgutil: 'com.apple.pkg.BrotherPrinterDrivers',
            rmdir:   '/Library/Printers/Brother'

  zap trash: [
               '~/Library/Caches/com.brother.utility.BrStatusMonitor',
               '~/Library/Preferences/com.brother.scanner.ica.plist',
               '~/Library/Preferences/com.brother.utilities.StatusMonitor.plist',
               '~/Library/Preferences/com.brother.utility.BrStatusMonitor.plist',
               '~/Library/Saved Application State/com.brother.utilities.StatusMonitor.savedState',
               '~/Library/Saved Application State/com.brother.utility.BrStatusMonitor.savedState',
             ]
end
