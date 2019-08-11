cask 'apogee-quartet' do
  version '2.5'
  sha256 'c9db60f2cde152c12e1c619b01d5389221ce15e02fafc5fa3fb7f664c0c1e044'

  url "https://apogeedigital.com/drivers/quartet-#{version}.dmg"
  appcast 'https://apogeedigital.com/support/register/quartet'
  name 'Apogee Quartet'
  homepage 'https://apogeedigital.com/products/quartet'

  depends_on macos: '>= :mavericks'

  pkg 'Quartet Software Installer.pkg'

  uninstall pkgutil:   [
                         'com.apogee.pkg.ApogeePopup',
                         'com.apogee.pkg.ApogeeServices',
                         'com.apogee.pkg.Maestro.*',
                         'com.apogee.pkg.Quartet.*',
                       ],
            launchctl: [
                         'com.ApogeePopup.plist',
                         'com.QuartetDaemon.plist',
                       ],
            quit:      [
                         'com.apogee.Apogee-Maestro-.*',
                         'com.apogee.ApogeePopup',
                         'com.apogee.QuartetUninstaller',
                       ],
            signal:    ['TERM', 'com.apogee.Quartet-Firmware-Updater'],
            kext:      'com.apogee.driver.ApogeeUSBQuartetAudio',
            script:    [
                         executable: "#{staged_path}/Quartet Uninstaller.app/Contents/Resources/QuartetUnInstall.sh",
                         sudo:       true,
                       ],
            delete:    [
                         '/Library/Application Support/Apogee/ApogeePopup.bundle',
                         '/Library/Audio/Plug-Ins/HAL/Apogee/Quartet',
                         '/Library/Extensions/QuartetUSBOverideDriver.kext',
                         '/Library/Frameworks/ApogeeServices.framework',
                       ],
            rmdir:     [
                         '/Library/Application Support/Apogee',
                         '/Library/Audio/Plug-Ins/HAL/Apogee',
                       ]

  zap trash: [
               '/Library/LaunchAgents/com.ApogeePopup.plist',
               '/Library/LaunchDaemons/com.QuartetDaemon.plist',
               '/Library/Preferences/com.apogee.productsInstalled.plist',
               '~/Library/Caches/com.apogee.Apogee-Maestro-2',
               '~/Library/Caches/com.apogee.ApogeePopup',
               '~/Library/Preferences/com.apogee.Apogee-Maestro-2.plist',
               '~/Library/Preferences/com.apogee.ApogeePopUp.plist',
               '~/Library/Saved Application State/com.apogee.Apogee-Maestro-2.savedState',
               '~/Library/Saved Application State/com.apogee.Quartet-Firmware-Updater.savedState',
             ]

  caveats do
    reboot
  end
end
