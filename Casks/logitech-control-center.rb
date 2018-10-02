cask 'logitech-control-center' do
  version '3.9.7.56'
  sha256 '9be3127908a90653e851a7f07a25c00d6e76677c216537c979e7a4c804a4447c'

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
