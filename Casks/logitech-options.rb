cask 'logitech-options' do
  version '6.72.227'
  sha256 '992298bfea1a4c79fb88f0c491347255e071d47a387e87a587a7e6a7340e9dab'

  url "https://www.logitech.com/pub/techsupport/options/Options_#{version}.zip"
  name 'Logitech Options'
  homepage 'https://support.logitech.com/en_us/software/options'

  auto_updates true
  depends_on macos: '>= :el_capitan'

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
