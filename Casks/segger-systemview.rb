cask 'segger-systemview' do
  version '3.10'
  sha256 '3e868cfc3fc5668c623c11d21492c8b9e18fd254c9fadd95e24f472bbc2b1ecc'

  url "https://www.segger.com/downloads/jlink/SystemView_MacOSX_V#{version.no_dots}.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.segger.com/downloads/jlink/systemview_mac_pkg',
          configuration: version.no_dots
  name 'SystemView'
  homepage 'https://www.segger.com/products/development-tools/systemview'

  pkg "SystemView_MacOSX_V#{version.no_dots}.pkg"

  uninstall pkgutil: 'com.segger.pkg.SystemView'
end
