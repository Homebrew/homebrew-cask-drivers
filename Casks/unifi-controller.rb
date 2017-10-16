cask 'unifi-controller' do
  version '5.5.24'
  sha256 'dfa72d9ac7eac57be622b539dca3ba958c5c9a2e496aab5226725f00771f6faf'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'UniFi Controller'
  homepage 'https://www.ubnt.com/download/unifi/'

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall pkgutil: 'com.ubnt.UniFi'
end
