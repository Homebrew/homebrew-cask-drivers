cask 'segger-ozone' do
  version '2.60k'
  sha256 '674e2e9b3fd5591cec6fe4fa61550e7394f43dd5329216386dc8cdc21222e85a'

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"
  name 'Ozone'
  homepage 'https://www.segger.com/products/development-tools/ozone-j-link-debugger'

  pkg "Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"

  uninstall pkgutil: 'com.segger.pkg.Ozone'
end
