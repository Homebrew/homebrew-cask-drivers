cask 'logitech-options' do
  version '6.90.111'
  sha256 'e4f28f48afb3c6a392dbbf4eb21d9e51013bfab5e3f7154d21bd47611984d762'

  url "https://www.logitech.com/pub/techsupport/options/Options_#{version}.zip"
  name 'Logitech Options'
  homepage 'https://support.logitech.com/en_us/software/options'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  pkg "LogiMgr Installer #{version}.app/Contents/Resources/LogiMgr.mpkg"

  uninstall script:    {
                         executable: '/Applications/Utilities/LogiMgr Uninstaller.app/Contents/Resources/Uninstaller',
                       },
            pkgutil:   [
                         'com.logitech.manager.pkg',
                         'com.Logitech.signedKext.pkg',
                       ],
            launchctl: 'com.logitech.manager.daemon'

  caveats do
    reboot
  end
end
