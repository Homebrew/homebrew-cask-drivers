cask 'unifi-controller' do
  version '5.4.15'
  sha256 '9a99e074b3a83338c60b34cf33d2e7b7fc618740d7df175f925cef16a9033f46'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'UniFi Controller'
  homepage 'https://www.ubnt.com/download/unifi/'

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall pkgutil: 'com.ubnt.UniFi'
end
