cask 'segger-systemview' do
  version '2.52d'
  sha256 '652dcde70b4d6699d4a82aff9bcc1960e7053b18346299a150b835127549da02'

  url "https://www.segger.com/downloads/jlink/SystemView_MacOSX_V#{version.no_dots}.pkg"
  name 'SystemView'
  homepage 'https://www.segger.com/products/development-tools/systemview'

  pkg "SystemView_MacOSX_V#{version.no_dots}.pkg"

  uninstall pkgutil: 'com.segger.pkg.SystemView'
end
