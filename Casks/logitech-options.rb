cask 'logitech-options' do
  version '6.70.938'
  sha256 '5bf0ac88897e4e521450b7c3f55275b6c85d5a4ced123e18968e8b196fe74a2f'

  url "https://www.logitech.com/pub/techsupport/options/Options_#{version}.zip"
  name 'Logitech Options'
  homepage 'https://support.logitech.com/en_us/software/options'

  auto_updates true
  depends_on macos: '>= :mavericks'

  pkg "LogiMgr Installer #{version}.app/Contents/Resources/LogiMgr.mpkg"

  uninstall script:  {
                       executable: '/Applications/Utilities/LogiMgr Uninstaller.app/Contents/Resources/Uninstaller',
                     },
            pkgutil: [
                       'com.logitech.manager.pkg',
                       'com.Logitech.signedKext.pkg',
                     ]

  caveats do
    reboot
  end
end
