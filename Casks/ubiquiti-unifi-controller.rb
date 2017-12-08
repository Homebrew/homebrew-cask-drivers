cask 'ubiquiti-unifi-controller' do
  version '5.6.26'
  sha256 'fab2a2b6c53dd90bd2aeb7a73b72ca60ff08f4fd12c031bbcfd5da995c0bec6b'

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
