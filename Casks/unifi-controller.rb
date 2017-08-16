cask 'unifi-controller' do
  version '5.5.20'
  sha256 'b66f51a501efe43452f903322047e23865d3300e643aec10488707486197daea'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'UniFi Controller'
  homepage 'https://www.ubnt.com/download/unifi/'

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall pkgutil: 'com.ubnt.UniFi'
end
