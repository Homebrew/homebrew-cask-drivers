cask 'ubiquiti-unifi-controller' do
  version '5.6.22'
  sha256 '0481ec530f9bc1b51ea940bd3c89e57e12b84d2ab3c7c6376141337118b08729'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'UniFi Controller'
  homepage 'https://www.ubnt.com/download/unifi/'

  conflicts_with cask: 'ubiquiti-unifi-controller-lts'

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall pkgutil: 'com.ubnt.UniFi'
end
