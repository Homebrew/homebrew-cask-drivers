cask 'ubiquiti-unifi-controller' do
  version '5.12.66'
  sha256 '981d8c057277d9c71cb2278e52234a7b04bff0bf343b5f2f3a17040e8088c773'

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
    depends_on_java '8'
    license 'https://www.ui.com/eula/'
  end
end
