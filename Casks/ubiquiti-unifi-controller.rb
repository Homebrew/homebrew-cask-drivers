cask 'ubiquiti-unifi-controller' do
  version '5.11.50'
  sha256 '4a231813694c2ae05c1d8f9c44b6a1887835176fb75d9d16c56695c8bf8eb63a'

  # dl.ubnt.com was verified as official when first introduced to the cask
  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  appcast 'https://www.ui.com/download/unifi',
          configuration: :no_check
  name 'Ubiquiti UniFi Network Controller'
  homepage 'https://unifi-sdn.ui.com/'

  conflicts_with cask: 'ubiquiti-unifi-controller-lts'

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall quit:    [
                       'com.oracle.java.*.jre',
                       'com.ubnt.UniFi-Discover',
                     ],
            signal:  ['TERM', 'com.ubnt.UniFi'],
            pkgutil: 'com.ubnt.UniFi',
            delete:  [
                       '/Applications/UniFi-Discover.app',
                       '/Applications/UniFi.app',
                     ]

  zap trash: [
               '~/Library/Application Support/UniFi',
               '~/Library/Saved Application State/com.ubnt.UniFi-Discover.savedState',
               '~/Library/Saved Application State/com.ubnt.UniFi.savedState',
             ]

  caveats do
    license 'https://www.ui.com/eula/'
  end
end
