cask 'unifi-controller' do
  version '5.4.11'
  sha256 'c9321ad3065e2a3233349a5ab06d0236600705cd13fcd3877057ef9b8c21640b'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'UniFi Controller'
  homepage 'https://www.ubnt.com/download/unifi/'

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall pkgutil: 'com.ubnt.UniFi'
end
