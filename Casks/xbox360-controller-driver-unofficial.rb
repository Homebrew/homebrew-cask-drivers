cask 'xbox360-controller-driver-unofficial' do
  version '0.16.7'
  sha256 'df5c5b3ad9e4db0482fa3cc5dddbc6d212eeabf095c98f629d7c9810a2c29091'

  url "https://github.com/360Controller/360Controller/releases/download/v#{version}/360ControllerInstall_#{version}.dmg"
  appcast 'https://github.com/360Controller/360Controller/releases.atom',
          checkpoint: '1575db7ea382ad3bbed44b200b788627b742cee9153e23f75968049bcf261ca1'
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
