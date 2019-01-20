cask 'apogee-element-ensemble' do
  version '2.0'
  sha256 '72dca58261a4ae663e5e971e3cfc4bad1fd491f0f51758beabdaa39667d0a4b1'

  url "https://www.apogeedigital.com/drivers/Apogee-Control-#{version}-Element.dmg"
  appcast 'http://www.apogeedigital.com/support/register/element'
  name 'Apogee Element'
  homepage 'https://www.apogeedigital.com/products/element'

  depends_on macos: '>= :yosemite'

  pkg 'Element Ensemble Installer.pkg'

  uninstall pkgutil:   [
                         'com.apogee.pkg.ApogeeElementEnsembleAudioPlugin',
                         'com.apogee.pkg.ApogeeFirmwareUpdater',
                         'com.apogee.pkg.kextApogeeElementEnsemble',
                         'com.apogeedigital.ApogeeControl',
                         'com.apogeedigital.ElementHelper',
                       ],
            launchctl: [
                         'com.ElementHelper.plist',
                       ],
            quit:      [
                         'com.apogeedigital.Apogee-Thunderbolt-Firmware-Updater',
                         'com.apogeedigital.ApogeeControl',
                         'com.apogeedigital.ElementHelper',
                       ],
            kext:      'com.apogeedigital.kextElementEnsemble',
            script:    [
                         executable: "#{staged_path}/Element Ensemble Uninstaller.app/Contents/Resources/ElementEnsembleUnInstall.sh",
                         sudo:       true,
                       ],
            delete:    [
                         '/Library/Application Support/Apogee/Element Helper.app',
                         '/Library/Audio/Plug-Ins/HAL/ApogeeElementEnsemble.driver',
                         '/Library/Extensions/ApogeeElementEnsemble.kext',
                       ],
            rmdir:     '/Library/Application Support/Apogee'

  zap trash: [
               '/Library/LaunchAgents/com.ElementHelper.plist',
               '~/Library/Preferences/com.apogeedigital.ApogeeControl.plist',
               '~/Library/Saved Application State/com.apogeedigital.Apogee-Thunderbolt-Firmware-Updater.savedState',
               '~/Library/Saved Application State/com.apogeedigital.ApogeeControl.savedState',
             ]

  caveats do
    reboot
  end
end
