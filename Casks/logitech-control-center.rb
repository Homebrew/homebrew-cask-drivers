cask 'logitech-control-center' do
  version '3.9.8'
  sha256 'a35847e73949c0ff90a219ca81ecc8da46fa319b9a8e02e1f5dc974f85e44138'

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
