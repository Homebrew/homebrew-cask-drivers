cask 'segger-ozone' do
  version '2.60f'
  sha256 '17e9f60ac15a64465a6a60d4f9b04d57ecec93a9e210791efd6e576c03eb21c2'

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"
  name 'Ozone'
  homepage 'https://www.segger.com/products/development-tools/ozone-j-link-debugger'

  pkg "Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"

  uninstall pkgutil: 'com.segger.pkg.Ozone'
end
