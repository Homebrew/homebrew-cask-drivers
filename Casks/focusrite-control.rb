cask 'focusrite-control' do
  version '3.6.0.1822'
  sha256 'de9863b01059fee00a7168acf568adbd10bc80f9bbe4911b0249739f87930068'

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
