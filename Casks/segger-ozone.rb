cask 'segger-ozone' do
  version '2.60o'
  sha256 'a33e83c6d6a241c685ae2afe97ee9db911beea380b3b43ceca3579f553fd4b5a'

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"
  name 'Ozone'
  homepage 'https://www.segger.com/products/development-tools/ozone-j-link-debugger'

  pkg "Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"

  uninstall pkgutil: 'com.segger.pkg.Ozone'
end
