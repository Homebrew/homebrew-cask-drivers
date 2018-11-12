cask 'ubiquiti-unifi-controller' do
  version '5.9.29'
  sha256 'e028f9103e44c62d401caa9b74dfd0b049ae7d8532a0580f43f39dc8e789faf9'

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
