cask 'logitech-control-center' do
  version '3.9.10'
  sha256 'f2ee5d6a01009acc5b7da310695e1b9c0a0702814adc4e46e09023598e25721e'

  url "https://www.logitech.com/pub/techsupport/mouse/mac/lcc#{version}.zip"
  name 'Logitech Control Center'
  homepage 'https://support.logitech.com/en_us/product/3129'

  depends_on macos: '>= :high_sierra'

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
