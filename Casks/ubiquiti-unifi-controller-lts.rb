cask 'ubiquiti-unifi-controller-lts' do
  version '5.6.39'
  sha256 'f0abdb4a5cc0913ca8f63530612febdd4e4da5a01b28aa2d84136a9cdfb5d3b1'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'UniFi Controller - LTS version'
  homepage 'https://www.ubnt.com/download/unifi/'

  conflicts_with cask: 'ubiquiti-unifi-controller'

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall pkgutil: 'com.ubnt.UniFi',
            delete:  [
                       '/Applications/UniFi.app',
                       '/Applications/UniFi-Discover.app',
                     ]
end
