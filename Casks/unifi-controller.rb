cask 'unifi-controller' do
  version '5.5.19'
  sha256 'f3f3e94185cd43a1f21a4483afc161ebba5c905fd3680d26b159f3e97f741adc'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'UniFi Controller'
  homepage 'https://www.ubnt.com/download/unifi/'

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall pkgutil: 'com.ubnt.UniFi'
end
