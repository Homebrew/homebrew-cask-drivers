cask 'ubiquiti-unifi-controller' do
  version '5.11.47'
  sha256 '448f6ff6626db36b0d49c6f519d75260d0487bfe13985a819482bf39026c1d0b'

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
