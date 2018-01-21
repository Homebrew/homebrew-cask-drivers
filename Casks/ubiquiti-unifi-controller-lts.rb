cask 'ubiquiti-unifi-controller-lts' do
  version '5.6.29'
  sha256 '4a350ebb157301a1af337b81e815c62f2f58321bbd734e42f564bfa9c69bcd56'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'UniFi Controller - LTS version'
  homepage 'https://www.ubnt.com/download/unifi/'

  conflicts_with cask: 'ubiquiti-unifi-controller'

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall pkgutil: 'com.ubnt.UniFi'
end
