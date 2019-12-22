cask 'segger-systemview' do
  version '3.10'
  sha256 '0d941a82618067218d38d07fe3d42fbb98df09ca4cfacc619ec1091656017c88'

  url "https://www.segger.com/downloads/jlink/SystemView_MacOSX_V#{version.no_dots}.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.segger.com/downloads/jlink/systemview_mac_pkg',
          configuration: version.no_dots
  name 'SystemView'
  homepage 'https://www.segger.com/products/development-tools/systemview'

  pkg "SystemView_MacOSX_V#{version.no_dots}.pkg"

  uninstall pkgutil: 'com.segger.pkg.SystemView'
end
