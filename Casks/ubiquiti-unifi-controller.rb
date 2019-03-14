cask 'ubiquiti-unifi-controller' do
  version '5.10.19'
  sha256 '2dea4802ccc5203d29956f5c970fc676afae484ba94255e61f11807422c66547'

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
