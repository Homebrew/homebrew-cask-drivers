cask 'segger-ozone' do
  version '2.62a'
  sha256 '7837ced6192dfd9f90d3d147f0814b5a52bba9f15d5690ef7a5b086db09ca214'

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"
  name 'Ozone'
  homepage 'https://www.segger.com/products/development-tools/ozone-j-link-debugger'

  pkg "Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"

  uninstall pkgutil: 'com.segger.pkg.Ozone'
end
