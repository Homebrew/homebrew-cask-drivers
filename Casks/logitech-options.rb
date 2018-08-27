cask 'logitech-options' do
  version '6.92.231'
  sha256 '6812ff10690c08c5b4b884bf7545f75bf4327943027b16611c6c965a430234d2'

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
