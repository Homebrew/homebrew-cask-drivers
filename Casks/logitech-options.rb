cask 'logitech-options' do
  version '7.00.554'
  sha256 'cd3467a7147640fbdd07958ca7e3039c75c092cb9b1118dc4304f0e363d06c58'

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
