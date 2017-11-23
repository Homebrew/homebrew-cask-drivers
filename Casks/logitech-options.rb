cask 'logitech-options' do
  version '6.70.2047'
  sha256 '6cea00575106cf9d9afe255914086e3e5a7f03fca9f546e2f79fbcfaaeaaa8ca'

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
