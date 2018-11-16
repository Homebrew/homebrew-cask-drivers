cask 'segger-ozone' do
  version '2.60d'
  sha256 '4310397a8178e35d51b5c799e27fa286e8c19c51ef1d2be37a1732a81d3a4aad'

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"
  name 'Ozone'
  homepage 'https://www.segger.com/products/development-tools/ozone-j-link-debugger'

  pkg "Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"

  uninstall pkgutil: 'com.segger.pkg.Ozone'
end
