cask 'solarflare-network-adapter' do
  version '3.3.4.6349'
  sha256 '024643f3842a6da4b12651e62aa6fff8afbf8c4558a30b41b690e3616eed0b3b'

  url 'https://support.solarflare.com/index.php/component/cognidox/?file=SF-111621-LS-1_Solarflare_OS_X_Driver_Package_OS_X_10.9_-_Signed.dmg&task=download&format=raw&id=1795'
  name 'Solarflare Network Adapter'
  homepage 'https://support.solarflare.com/index.php/component/cognidox/?view=categories&id=1795x'

  pkg 'Solarflare10GbE.pkg'

  uninstall launchctl:  'com.solarflare.sfxge_sysctl',
            login_item: 'com.solarflare.sfxge_sysctl',
            kext:       'com.solarflare.driver.sfxge',
            pkgutil:    'com.solarflare.pkg.Solarflare10GbE',
            delete:     [
                          '/usr/local/bin/sfreport',
                          '/usr/local/bin/sfupdate',
                          '/usr/local/bin/sfxge_sysctl',
                        ]
end
