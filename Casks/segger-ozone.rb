cask 'segger-ozone' do
  version '2.60n'
  sha256 'ca3337744a12d49fbb59c3a590e28eb0cdcdb54ffbba7102f62a69c6a0ca7528'

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"
  name 'Ozone'
  homepage 'https://www.segger.com/products/development-tools/ozone-j-link-debugger'

  pkg "Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"

  uninstall pkgutil: 'com.segger.pkg.Ozone'
end
