cask 'xbox360-controller-driver-unofficial' do
  version '0.16.5'
  sha256 '1e18fcb18e44072dcebecdadaeb1208df6425a4b4dc490df2883fcc60b0fa1c4'

  url "https://github.com/360Controller/360Controller/releases/download/v#{version}/360ControllerInstall_#{version}.dmg"
  appcast 'https://github.com/360Controller/360Controller/releases.atom',
          checkpoint: '7fb3293a83c8cd981e3cfc6e4d9bbfdf091f7702804547730bec2b057405b410'
  name 'TattieBogle Xbox 360 Controller Driver (with improvements)'
  homepage 'https://github.com/360Controller/360Controller'

  pkg 'Install360Controller.pkg'

  uninstall pkgutil:   'com.mice.pkg.Xbox360controller',
            launchctl: 'com.mice.360Daemon',
            kext:      [
                         'com.mice.Xbox360ControllerForceFeedback',
                         'com.mice.driver.Xbox360Controller',
                         'com.mice.driver.Wireless360Controller',
                         'com.mice.driver.WirelessGamingReceiver',
                       ],
            # Symlink to kext in /Library/Extensions is not removed
            # during :pkgutil phase of uninstall, so we delete it here.
            delete:    '/System/Library/Extensions/360Controller.kext'

  caveats do
    reboot
  end
end
