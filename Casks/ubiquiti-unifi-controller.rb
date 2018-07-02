cask 'ubiquiti-unifi-controller' do
  version '5.8.24'
  sha256 'fcd82bb17ea2ca7d6c97a5960177c3be1169572ef0780a98e03f6d4ab5360a91'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
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
end
