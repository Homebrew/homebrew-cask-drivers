cask 'logitech-options' do
  version '6.94.38'
  sha256 '19ea1508517c9bd6504511890559f50a6ba1e92e283d4578a15312be79b4c8a1'

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
