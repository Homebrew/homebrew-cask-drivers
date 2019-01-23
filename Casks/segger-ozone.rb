cask 'segger-ozone' do
  version '2.60m'
  sha256 '2167484367a201714fa3b49020b2d94e71fe7aa02bb45c3acb3e626dcb2c68a0'

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"
  name 'Ozone'
  homepage 'https://www.segger.com/products/development-tools/ozone-j-link-debugger'

  pkg "Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"

  uninstall pkgutil: 'com.segger.pkg.Ozone'
end
