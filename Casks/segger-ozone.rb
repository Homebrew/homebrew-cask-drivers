cask 'segger-ozone' do
  version '2.60g'
  sha256 'f1e40c116a3811a480645d866fbd6c867057d5d287d0ae6f8c5b2fc7ef92d3c4'

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"
  name 'Ozone'
  homepage 'https://www.segger.com/products/development-tools/ozone-j-link-debugger'

  pkg "Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"

  uninstall pkgutil: 'com.segger.pkg.Ozone'
end
