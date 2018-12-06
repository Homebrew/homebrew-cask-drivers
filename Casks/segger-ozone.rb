cask 'segger-ozone' do
  version '2.60h'
  sha256 '7cab2f2a8c2b164bd7e28d4438b202ec59a11e5eb3ff1a156e829cde22f4d4d0'

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"
  name 'Ozone'
  homepage 'https://www.segger.com/products/development-tools/ozone-j-link-debugger'

  pkg "Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"

  uninstall pkgutil: 'com.segger.pkg.Ozone'
end
