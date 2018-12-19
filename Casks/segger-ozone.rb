cask 'segger-ozone' do
  version '2.60j'
  sha256 'aa4e1b0afdcbf76c2ca3a000a91f2b085f31d2087f4ecb5087cadb7b64007ea0'

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"
  name 'Ozone'
  homepage 'https://www.segger.com/products/development-tools/ozone-j-link-debugger'

  pkg "Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"

  uninstall pkgutil: 'com.segger.pkg.Ozone'
end
