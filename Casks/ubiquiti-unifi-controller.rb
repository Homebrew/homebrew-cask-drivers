cask 'ubiquiti-unifi-controller' do
  version '5.10.17'
  sha256 '2b16568fc3d3d87d8c24d3fb342849ff20983a75d6cc75001d54139089e5486d'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  appcast 'https://www.ubnt.com/download/unifi/'
  name 'UniFi Controller'
  homepage 'https://www.ubnt.com/download/unifi/'

  conflicts_with cask: 'ubiquiti-unifi-controller-lts'

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall pkgutil: 'com.ubnt.UniFi',
            delete:  [
                       '/Applications/UniFi.app',
                       '/Applications/UniFi-Discover.app',
                     ]

  zap trash: '~/Library/Application Support/UniFi'
end
