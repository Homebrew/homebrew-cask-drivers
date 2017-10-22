cask 'ubiquiti-unifi-controller-lts' do
  version '5.4.18'
  sha256 '31069768e6761e50ce4f1df022b31d851b8ead7cb0dc30d24df3a32a313b4f90'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'UniFi Controller - LTS version'
  homepage 'https://www.ubnt.com/download/unifi/'

  conflicts_with cask: 'unifi-controller'

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall pkgutil: 'com.ubnt.UniFi'
end
