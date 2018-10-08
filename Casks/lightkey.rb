cask 'lightkey' do
  version '2.6.3'
  sha256 'b29196d1b39725db2e197ed57fa180d7033e34d6392833e2dc72d7682afa6dd4'

  url "https://lightkeyapp.com/content/06-download/Lightkey-#{version.dots_to_hyphens}/LightkeyInstaller.zip"
  appcast 'https://lightkeyapp.com/en/update'
  name 'Lightkey'
  homepage 'https://lightkeyapp.com/'

  depends_on macos: '>= :high_sierra'

  pkg 'LightkeyInstaller.pkg'

  uninstall pkgutil: [
                       'de.monospc.lightkey.pkg.App',
                       'de.monospc.lightkey.pkg.Eurolite',
                       'de.monospc.lightkey.pkg.OLA',
                       'de.monospc.lightkey.pkg.Velleman',
                       'de.monospc.lightkey.pkg.documentation',
                       'com.FTDI.ftdiusbserialdriverinstaller.FTDIUSBSerialDriver.pkg',
                     ]

  zap pkgutil: 'com.FTDI.ftdiusbserialdriverinstaller.FTDIUSBSerialDriver.pkg',
      kext:    'com.FTDI.driver.FTDIUSBSerialDriver'
end
