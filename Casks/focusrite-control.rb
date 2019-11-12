cask 'focusrite-control' do
  version '3.4.4'
  sha256 'a6004585646b6c2a9c43b87be2690fcfa46b71783d46308572c7ace67f43023e'

  url "https://customer.focusrite.com/sites/customer/files/downloads/Focusrite%20Control%20-%20#{version}.dmg"
  appcast 'https://customer.focusrite.com/support/downloads?brand=Focusrite&product_by_type=1360&download_type=software'
  name 'Focusrite Control'
  homepage 'https://customer.focusrite.com/support/downloads?brand=Focusrite&product_by_type=1360&download_type=software'

  pkg 'Focusrite Control.pkg'

  uninstall pkgutil:   [
                         'com.focusrite.FocusriteControl',
                       ],
            launchctl: 'com.focusrite.ControlServer'
end
