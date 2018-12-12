cask 'apogee-duet' do
  version '2.5'
  sha256 '2797ceaff7947fdc5cb82b5b8f774a104fccdb7136aee8642abcb8930fc46249'

  url "https://www.apogeedigital.com/drivers/duet_#{version}.dmg"
  name 'Apogee Duet'
  homepage 'https://www.apogeedigital.com/products/duet'

  depends_on macos: '>= :mavericks'

  app 'Duet USB Firmware Updater.app'
  pkg 'Duet Software Installer.pkg'

  uninstall pkgutil:   'com.apogee.pkg.*',
            launchctl: [
                         'com.ApogeePopup.plist',
                         'com.DuetUSBDaemon.plist',
                       ],
            script:    [
                         executable: "#{staged_path}/Duet Uninstaller.app/Contents/Resources/DuetUSBUninstall.sh",
                         sudo:       true,
                       ]

  caveats do
    reboot
  end
end
