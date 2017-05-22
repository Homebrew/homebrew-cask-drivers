cask 'unifi-controller' do
  version '5.4.16'
  sha256 'ca22aed22772e3c2c9e26146d8984bf2373a788131f848952bd68f10d15887bb'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'UniFi Controller'
  homepage 'https://www.ubnt.com/download/unifi/'

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall pkgutil: 'com.ubnt.UniFi'
end
