cask 'apple-brother-printer-drivers' do
  version '4.1.1'
  sha256 '74dd579e43fb5b410d447e399bf33654adaefc01c968f8b61605ff48a41d9c2c'

  # updates.cdn-apple.com was verified as official when first introduced to the cask
  url 'https://updates.cdn-apple.com/2019/cert/041-88742-20191011-c679d07b-a355-4dfa-bae5-70d692b3d0b2/BrotherPrinterDrivers.dmg'
  appcast 'https://support.apple.com/kb/DL1927'
  name 'Brother Printer Drivers'
  homepage 'https://support.apple.com/kb/DL1927'

  depends_on macos: '<= :sierra'

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
