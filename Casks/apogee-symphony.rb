cask 'apogee-symphony' do
  if MacOS.version <= :el_capitan
    version '5.2'
    sha256 '50563eab6ce715981f2d06011bf7836c540bd48e2a3f411ed7e9557dc4545fce'
    url "https://www.apogeedigital.com/drivers/Symphony_Release_#{version}.dmg"
  else
    version '5.4'
    sha256 'a74ae84061c428a4e4735aecf13d265bb7fe1319d9ed99941fa969eeb5e3fa9e'
    url "https://www.apogeedigital.com/drivers/symphony-io-#{version}.dmg"
  end

  name 'Apogee Symphony I/O'
  homepage 'https://www.apogeedigital.com/support/symphony-io'

  depends_on macos: '>= :mavericks'

  app 'SymphonyIO Firmware Updater.app'
  pkg 'Symphony Software Installer.pkg'

  uninstall pkgutil:   [
                         'com.apogee.driver.Symphony64',
                         'com.apogee.pkg.*',
                         'com.apogee.symphonySystem.*',
                       ],
            launchctl: [
                         'com.ApogeePopup.plist',
                         'com.symphonyDaemon.plist',
                         'com.SymphonyIOUSBDaemon.plist',
                         'com.usbApogeeDaemon.plist',
                       ],
            script:    [
                         executable: "#{staged_path}/Symphony System Uninstaller.app/Contents/Resources/SymphonyUnInstall.sh",
                         sudo:       true,
                       ]

  caveats do
    reboot
  end
end
