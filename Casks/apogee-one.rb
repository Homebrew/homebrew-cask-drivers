cask 'apogee-one' do
  version '2.5'
  sha256 'f99c06cf3ae7f9009a57cb35bafe803236fa55e1518ff48e55e55f16f62df80f'

  url "https://www.apogeedigital.com/drivers/one-#{version}.dmg"
  name 'Apogee One'
  homepage 'https://www.apogeedigital.com/products/one'

  depends_on macos: '>= :mavericks'

  pkg 'One Software Installer.pkg'

  uninstall pkgutil:   'com.apogee.pkg.*',
            launchctl: [
                         'com.ApogeePopup.plist',
                         'com.ONEDaemon.plist',
                       ],
            script:    [
                         executable: "#{staged_path}/One Uninstaller.app/Contents/Resources/ONEUnInstall.sh",
                         sudo:       true,
                       ]

  caveats do
    reboot
  end
end
