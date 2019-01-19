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

  appcast 'http://www.apogeedigital.com/support/register/symphony-io'
  name 'Apogee Symphony I/O'
  homepage 'https://www.apogeedigital.com/support/symphony-io'

  depends_on macos: '>= :mavericks'

  pkg 'Symphony Software Installer.pkg'

  uninstall pkgutil:   [
                         'com.apogee.driver.Symphony64',
                         'com.apogee.pkg.ApogeePopup',
                         'com.apogee.pkg.ApogeeServices',
                         'com.apogee.pkg.Maestro.*',
                         'com.apogee.pkg.Symphony.*',
                         'com.apogee.symphonySystem.*',
                       ],
            launchctl: [
                         'com.ApogeePopup.plist',
                         'com.SymphonyIOUSBDaemon.plist',
                         'com.symphonyDaemon.plist',
                         'com.usbApogeeDaemon.plist',
                       ],
            quit:      [
                         'com.apogee.Apogee-Maestro-.*',
                         'com.apogeedigital.ThunderBridge-Firmware-Updater',
                       ],
            signal:    ['TERM', 'com.apogee.SymphonyIO-Firmware-Updater'],
            kext:      [
                         'com.apogee.driver.ApogeeUSBSymphonyIOAudio',
                         'com.apogeedigital.driver.Symphony64',
                         'com.apogeedigital.driver.Symphony64ThunderBridge',
                       ],
            script:    [
                         executable: "#{staged_path}/Symphony System Uninstaller.app/Contents/Resources/SymphonyUnInstall.sh",
                         sudo:       true,
                       ],
            delete:    [
                         '/Library/Application Support/Apogee/ApogeePopup.bundle',
                         '/Library/Audio/Plug-Ins/HAL/Apogee/Symphony Systems',
                         '/Library/Extensions/Symphony64.kext',
                         '/Library/Extensions/Symphony64Thunderbridge.kext',
                         '/Library/Extensions/SymphonyIOUSBOverideDriver.kext',
                         '/Library/Frameworks/ApogeeServices.framework',
                       ],
            rmdir:     [
                         '/Library/Application Support/Apogee',
                         '/Library/Audio/Plug-Ins/HAL/Apogee',
                       ]

  zap trash: [
               '/Library/LaunchAgents/com.ApogeePopup.plist',
               '/Library/LaunchDaemons/com.SymphonyDaemon.plist',
               '/Library/LaunchDaemons/com.SymphonyIOUSBDaemon.plist',
               '/Library/LaunchDaemons/com.usbApogeeDaemon.plist',
               '/Library/Preferences/com.apogee.productsInstalled.plist',
               '~/Library/Caches/com.apogee.Apogee-Maestro-2',
               '~/Library/Caches/com.apogee.ApogeePopup',
               '~/Library/Preferences/com.apogee.Apogee-Maestro-2.plist',
               '~/Library/Saved Application State/com.apogee.Apogee-Maestro-2.savedState',
               '~/Library/Saved Application State/com.apogee.SymphonyIO-Firmware-Updater.savedState',
               '~/Library/Saved Application State/com.apogeedigital.ThunderBridge-Firmware-Updater.savedState',
             ]

  caveats do
    reboot
  end
end
