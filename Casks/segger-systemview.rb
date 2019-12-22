cask 'segger-systemview' do
  version '3.10'
  sha256 '924dde978d72d36705bca7fd2a1cfddef6656ca2ca54dce7c6f17143d162773b'

  url "https://www.segger.com/downloads/jlink/SystemView_MacOSX_V#{version.no_dots}.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.segger.com/downloads/jlink/systemview_mac_pkg',
          configuration: version.no_dots
  name 'SystemView'
  homepage 'https://www.segger.com/products/development-tools/systemview'

  pkg "SystemView_MacOSX_V#{version.no_dots}.pkg"

  uninstall pkgutil: 'com.segger.pkg.SystemView'
end
