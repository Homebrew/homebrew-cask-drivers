cask 'ubiquiti-unifi-controller' do
  version '5.10.12'
  sha256 '846bd5e1312b12598c4d456504e24bd92664dfc2ef7c1d633df49c7e46547f2e'

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
