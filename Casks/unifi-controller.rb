cask 'unifi-controller' do
  version '5.4.14'
  sha256 '8e9927872bdffc124e9d85d127ce60c9ff7151d9257c2fb10e2e6475aab94e7a'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'UniFi Controller'
  homepage 'https://www.ubnt.com/download/unifi/'

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall pkgutil: 'com.ubnt.UniFi'
end
