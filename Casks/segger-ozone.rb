cask 'segger-ozone' do
  version '2.60l'
  sha256 '2350d4893b6000bce3fad1b121ac4cc7c9daec267d6dd6f336b6f8ce70481d1a'

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"
  name 'Ozone'
  homepage 'https://www.segger.com/products/development-tools/ozone-j-link-debugger'

  pkg "Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"

  uninstall pkgutil: 'com.segger.pkg.Ozone'
end
