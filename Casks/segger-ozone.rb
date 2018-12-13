cask 'segger-ozone' do
  version '2.60i'
  sha256 '23a664b9affc252e955f96ac3aedc91298120ebd3328b8ddcbc8047c02b68f40'

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"
  name 'Ozone'
  homepage 'https://www.segger.com/products/development-tools/ozone-j-link-debugger'

  pkg "Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"

  uninstall pkgutil: 'com.segger.pkg.Ozone'
end
