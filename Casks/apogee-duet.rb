cask 'apogee-duet' do
  version '2.5'
  sha256 '2797ceaff7947fdc5cb82b5b8f774a104fccdb7136aee8642abcb8930fc46249'

  url "https://www.apogeedigital.com/drivers/duet_#{version}.dmg"
  appcast 'http://www.apogeedigital.com/support/register/duet-ipad-mac'
  name 'Apogee Duet'
  homepage 'https://www.apogeedigital.com/products/duet'

  depends_on macos: '>= :mavericks'

  pkg 'Duet Software Installer.pkg'

  uninstall pkgutil:   [
                         'com.apogee.pkg.ApogeePopup',
                         'com.apogee.pkg.ApogeeServices',
                         'com.apogee.pkg.DuetUSB.*',
                         'com.apogee.pkg.Maestro.*',
                       ],
            launchctl: [
                         'com.ApogeePopup.plist',
                         'com.DuetUSBDaemon.plist',
                       ],
            quit:      [
                         'com.apogee.Apogee-Maestro-.*',
                         'com.apogee.ApogeePopup',
                         'com.apogee.DuetUSBUninstaller',
                       ],
            signal:    ['TERM', 'com.apogee.Duet-USB-Firmware-Updater'],
            kext:      'com.apogeedigital.kext.ApogeeUSBDuetAudio',
            script:    [
                         executable: "#{staged_path}/Duet Uninstaller.app/Contents/Resources/DuetUSBUninstall.sh",
                         sudo:       true,
                       ],
            delete:    [
                         '/Library/Application Support/Apogee/ApogeePopup.bundle',
                         '/Library/Audio/Plug-Ins/HAL/Apogee/DuetUSB',
                         '/Library/Extensions/DuetUSBOverideDriver.kext',
                         '/Library/Frameworks/ApogeeServices.framework',
                       ],
            rmdir:     [
                         '/Library/Application Support/Apogee',
                         '/Library/Audio/Plug-Ins/HAL/Apogee',
                       ]

  zap trash: [
               '/Library/LaunchAgents/com.ApogeePopup.plist',
               '/Library/LaunchDaemons/com.DuetUSBDaemon.plist',
               '/Library/Preferences/com.apogee.productsInstalled.plist',
               '~/Library/Caches/com.apogee.Apogee-Maestro-2',
               '~/Library/Caches/com.apogee.ApogeePopup',
               '~/Library/Preferences/com.apogee.Apogee-Maestro-2.plist',
               '~/Library/Preferences/com.apogee.ApogeePopUp.plist',
               '~/Library/Saved Application State/com.apogee.Apogee-Maestro-2.savedState',
               '~/Library/Saved Application State/com.apogee.Duet-USB-Firmware-Updater.savedState',
             ]

  caveats do
    reboot
  end
end
