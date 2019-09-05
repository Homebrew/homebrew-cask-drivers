cask 'logitech-options' do
  if MacOS.version <= :el_capitan
    version '6.94.38'
    sha256 '19ea1508517c9bd6504511890559f50a6ba1e92e283d4578a15312be79b4c8a1'
  elsif MacOS.version <= :sierra
    version '7.14.77'
    sha256 'e4df55642e04139fc93d955e949bf736196a404ed067d87f8de7eb9ac9117ece'
  else
    version '8.00.559'
    sha256 '017468c89a2a85b78e78a17f0970cf179094a97fd748c831b42be61b0412c77a'
  end

  url "https://www.logitech.com/pub/techsupport/options/Options_#{version}.zip"
  name 'Logitech Options'
  homepage 'https://support.logitech.com/software/options'

  auto_updates true

  pkg "LogiMgr Installer #{version}.app/Contents/Resources/LogiMgr.mpkg"

  uninstall launchctl: 'com.logitech.manager.daemon',
            quit:      [
                         'com.logitech.Logi-Options',
                         'com.logitech.manager.daemon',
                         'com.logitech.manager.uninstaller',
                       ],
            script:    [
                         executable: '/Applications/Utilities/LogiMgr Uninstaller.app/Contents/Resources/Uninstaller',
                       ],
            pkgutil:   [
                         'com.logitech.manager.pkg',
                         'com.Logitech.signedKext.pkg',
                       ],
            delete:    '/Library/Application Support/Logitech.localized'

  zap trash: [
               '~/Library/Application Support/Logitech/Logitech Options',
               '~/Library/Caches/com.logitech.Logi-Options',
               '~/Library/Preferences/com.logitech.Logi-Options.plist',
               '~/Library/Preferences/com.logitech.manager.daemon.plist',
               '~/Library/Preferences/com.logitech.manager.setting.ffff.plist',
               '~/Library/Saved Application State/com.logitech.manager.uninstaller.savedState',
             ],
      rmdir: '~/Library/Application Support/Logitech'

  caveats do
    reboot
  end
end
