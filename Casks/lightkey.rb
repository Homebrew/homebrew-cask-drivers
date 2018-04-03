cask 'lightkey' do
  version '2.4.1'
  sha256 '84813cc280e3d65bab4158fe1133aa606a19d701f4a045c72a56b28945b209ae'

  url "http://lightkeyapp.com/content/06-download/Lightkey-#{version.dots_to_hyphens}/LightkeyInstaller.zip"
  name 'Lightkey'
  homepage 'http://lightkeyapp.com/'

  pkg 'LightkeyInstaller.pkg'

  uninstall pkgutil: [
                       'de.monospc.lightkey.pkg.App',
                       'de.monospc.lightkey.pkg.Eurolite',
                       'de.monospc.lightkey.pkg.OLA',
                       'de.monospc.lightkey.pkg.Velleman',
                       'de.monospc.lightkey.pkg.documentation',
                     ]

  zap pkgutil: [
                 'com.FTDI.ftdiusbserialdriverinstaller.FTDIUSBSerialDriver.pkg',
               ]
end
