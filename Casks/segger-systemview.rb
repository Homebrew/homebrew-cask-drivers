cask 'segger-systemview' do
  version '3.10'
  sha256 '0ec20c756aa9a3037c9a5f82f99bcd7077209a965bceb1b58e24201fa0b8198f'

  url "https://www.segger.com/downloads/jlink/SystemView_MacOSX_V#{version.no_dots}.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.segger.com/downloads/jlink/systemview_mac_pkg',
          configuration: version.no_dots
  name 'SystemView'
  homepage 'https://www.segger.com/products/development-tools/systemview'

  pkg "SystemView_MacOSX_V#{version.no_dots}.pkg"

  uninstall pkgutil: 'com.segger.pkg.SystemView'
end
