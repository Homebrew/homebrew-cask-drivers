cask 'apogee-symphony-mkii' do
  if MacOS.version <= :mavericks
    version '2.0'
    sha256 'd905990be51cb27d4849978c6d54986cde27cf5364e9eb3b3843751f4f4a25f8'
  else
    version '3.1'
    sha256 'b65fbadca751721b22517faf8fc1a72b1c8b7b0a102fd515efe1e265c9917aa7'
  end

  url "https://www.apogeedigital.com/drivers/SymphonyIOMkII_Thunderbolt_Release.#{version}.dmg"
  appcast 'http://www.apogeedigital.com/support/register/symphony-io-mk-ii'
  name 'Apogee Symphony I/O MkII'
  homepage 'http://www.apogeedigital.com/support/symphony-io-mk-ii'

  depends_on macos: '>= :mavericks'

  pkg 'Symphony IO MkII Installer.pkg'

  uninstall pkgutil:   [
                         'com.apogee.pkg.ApogeeSymphonyIO2TAudioPlugin',
                         'com.apogee.pkg.SIOC2TBFirmwareUpdater',
                         'com.apogee.pkg.kextApogeeSymphonyIO2T',
                         'com.apogeedigital.SymphonyControl',
                         'com.apogeedigital.SymphonyHelper',
                       ],
            launchctl: 'com.SymphonyHelper.plist',
            quit:      [
                         'com.apogeedigital.Symphony-IO-Mk-II-Thunderbolt-Firmware-Updater',
                         'com.apogeedigital.SymphonyControl',
                         'com.apogeedigital.SymphonyHelper',
                       ],
            kext:      'com.apogeedigital.kextSymphonyIO2T',
            script:    [
                         executable: "#{staged_path}/Symphony IO MkII Uninstaller.app/Contents/Resources/SymphonyIOMkIIUnInstall.sh",
                         sudo:       true,
                       ],
            delete:    [
                         '/Library/Application Support/Apogee/Symphony Helper.app',
                         '/Library/Audio/Plug-Ins/HAL/ApogeeSymphonyIO2T.driver',
                         '/Library/Extensions/ApogeeSymphonyIO2T.kext',
                       ],
            rmdir:     '/Library/Application Support/Apogee'

  zap trash: [
               '/Library/LaunchAgents/com.SymphonyHelper.plist',
               '~/Library/Preferences/com.apogeedigital.SymphonyControl.plist',
               '~/Library/Saved Application State/com.apogeedigital.Symphony-IO-Mk-II-Thunderbolt-Firmware-Updater.savedState',
               '~/Library/Saved Application State/com.apogeedigital.SymphonyControl.savedState',
             ]

  caveats do
    reboot
  end
end
