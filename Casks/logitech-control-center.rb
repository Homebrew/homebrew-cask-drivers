cask 'logitech-control-center' do
  version '3.9.6.241'
  sha256 '599f2fdbd8051a4bfb61ba0430a2eb3204b8a29badb9a22b8ac0ad9f44fd3b5f'

  url "https://www.logitech.com/pub/techsupport/mouse/mac/lcc#{version}.zip"
  name 'Logitech Control Center'
  homepage 'https://support.logitech.com/en_us/product/3129'

  pkg 'LCC Installer.app/Contents/Resources/Logitech Control Center.mpkg'

  uninstall script:  {
                       executable: 'LCC Installer.app/Contents/Resources/LCC Uninstaller Tool',
                     },
            pkgutil: [
                       'com.Logitech.Control Center.pkg',
                       'com.Logitech.Unifying Software.pkg',
                       'com.Logitech.Updater.pkg',
                     ]

  caveats do
    kext
    reboot
  end
end
