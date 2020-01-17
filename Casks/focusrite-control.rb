cask 'focusrite-control' do
  version '3.4.6.1695'
  sha256 'c9466eef24db21ca64c7b4cdd76ffbe9ecd6cb68c878b23832efc01ea36be614'

  url "https://customer.focusrite.com/sites/customer/files/downloads/Focusrite%20Control%20-%20#{version}.dmg"
  appcast 'https://customer.focusrite.com/support/downloads?brand=Focusrite&product_by_type=1360&download_type=software',
          configuration: version.major_minor_patch
  name 'Focusrite Control'
  homepage 'https://customer.focusrite.com/support/downloads?brand=Focusrite&product_by_type=1360&download_type=software'

  pkg 'Focusrite Control.pkg'

  uninstall pkgutil:   [
                         'com.focusrite.FocusriteControl',
                       ],
            launchctl: 'com.focusrite.ControlServer'
end
