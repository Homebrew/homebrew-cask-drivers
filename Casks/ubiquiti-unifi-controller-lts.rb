cask 'ubiquiti-unifi-controller-lts' do
  version '5.6.30'
  sha256 '667908f1e60fe656e600751ae70331e9e860ff9454a44094280979cbbbddc5bb'

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
