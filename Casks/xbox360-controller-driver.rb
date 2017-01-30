cask 'xbox360-controller-driver' do
  version '0.16.4'
  sha256 'e72232947be69b9483349ffa9bc4d8fe7e74c5ea453f3df14a6d86489489f4c3'

  url "https://github.com/360Controller/360Controller/releases/download/v#{version}/360ControllerInstall_#{version}.dmg"
  appcast 'https://github.com/360Controller/360Controller/releases.atom',
          checkpoint: '5352493bf00e50b6ad74f71a1f009e01a593e9ae3becb3856e2ae5cd75a9bd17'
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
