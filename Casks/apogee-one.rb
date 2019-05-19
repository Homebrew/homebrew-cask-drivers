cask 'apogee-one' do
  version '2.5'
  sha256 'f99c06cf3ae7f9009a57cb35bafe803236fa55e1518ff48e55e55f16f62df80f'

  url "https://www.apogeedigital.com/drivers/one-#{version}.dmg"
  appcast 'https://www.apogeedigital.com/support/register/one-ipad-mac'
  name 'Apogee One'
  homepage 'https://www.apogeedigital.com/products/one'

  depends_on macos: '>= :mavericks'

  pkg 'One Software Installer.pkg'

  uninstall pkgutil:   [
                         'com.apogee.pkg.ApogeePopup',
                         'com.apogee.pkg.ApogeeServices',
                         'com.apogee.pkg.Maestro.*',
                         'com.apogee.pkg.ONE.*',
                       ],
            launchctl: [
                         'com.ApogeePopup.plist',
                         'com.ONEDaemon.plist',
                       ],
            quit:      [
                         'com.apogee.Apogee-Maestro-.*',
                         'com.apogee.ApogeePopup',
                         'com.apogee.ONEv2Uninstaller',
                       ],
            signal:    ['TERM', 'com.apogeedigital.One-Firmware-Updater'],
            kext:      [
                         'com.apogee.driver.ApogeeUSBONEAudio',
                         'com.apogee.electronics.driver.one.plugin',
                       ],
            script:    [
                         executable: "#{staged_path}/One Uninstaller.app/Contents/Resources/ONEUnInstall.sh",
                         sudo:       true,
                       ],
            delete:    [
                         '/Library/Application Support/Apogee/ApogeePopup.bundle',
                         '/Library/Audio/Plug-Ins/HAL/Apogee/ONE',
                         '/Library/Extensions/ONEMeteringPlugIn.kext',
                         '/Library/Extensions/ONEUSBOverideDriver.kext',
                         '/Library/Frameworks/ApogeeServices.framework',
                       ],
            rmdir:     [
                         '/Library/Application Support/Apogee',
                         '/Library/Audio/Plug-Ins/HAL/Apogee',
                       ]

  zap trash: [
               '/Library/LaunchAgents/com.ApogeePopup.plist',
               '/Library/LaunchDaemons/com.ONEDaemon.plist',
               '/Library/Preferences/com.apogee.productsInstalled.plist',
               '~/Library/Caches/com.apogee.Apogee-Maestro-2',
               '~/Library/Caches/com.apogee.ApogeePopup',
               '~/Library/Preferences/com.apogee.Apogee-Maestro-2.plist',
               '~/Library/Preferences/com.apogee.ApogeePopUp.plist',
               '~/Library/Saved Application State/com.apogee.Apogee-Maestro-2.savedState',
             ]

  caveats do
    reboot
  end
end
