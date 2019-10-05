cask 'logitech-control-center' do
  version '3.9.9'
  sha256 'a8bdb003d7700f422d093d7a4bc298be92b58dad320385776655ffc7d425c05a'

  url "https://www.logitech.com/pub/techsupport/mouse/mac/lcc#{version}.zip"
  name 'Logitech Control Center'
  homepage 'https://support.logitech.com/en_us/product/3129'

  pkg 'LCC Installer.app/Contents/Resources/Logitech Control Center.mpkg'

  uninstall script:  {
                       executable: '/Applications/Utilities/LCC Uninstaller.app/Contents/Resources/LCC Uninstaller Tool',
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
