cask 'segger-ozone' do
  version '2.62'
  sha256 '6d70ca4b3b3e2d40ebe3d1431c69261c5383bbff56207de2f8e03473c11de892'

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"
  name 'Ozone'
  homepage 'https://www.segger.com/products/development-tools/ozone-j-link-debugger'

  pkg "Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"

  uninstall pkgutil: 'com.segger.pkg.Ozone'
end
