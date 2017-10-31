cask 'native-instruments-controller-editor' do
  version '2.1.0'
  sha256 '1533f6d21a1496c434fad81a7deb7d21b085a668137c33ccea71d5a272043555'

  url do
    require 'open-uri'
    dmg = "Controller_Editor_#{version.no_dots}_Mac.dmg"
    auth = open(homepage).read.scan(%r{href=.*#{dmg}\?(.+)\b}).flatten.first
    "http://protected-cdn-ec.native-instruments.com/um/all_users/#{dmg}?#{auth}"
  end
  name 'Controller Editor'
  homepage 'https://www.native-instruments.com/en/support/downloads/drivers-other-files/'

  pkg "Controller Editor #{version} Installer Mac.pkg"

  uninstall pkgutil: %r{com.native-instruments.Controller.*},
            delete:  '/Applications/Native Instruments/Controller Editor',
            rmdir:   '~/Library/Application Support/Native Instruments'

  zap delete: '~/Library/Preferences/com.native-instruments.Controller*.plist',
      trash:  '~/Library/Application Support/Native Instruments/**/Controller Editor'
end
