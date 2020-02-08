cask 'segger-systemview' do
  version '3.10'
  sha256 '6673e97b79f4a8adc717c8b967b53b8fd618c03b875d266368fcdc80e07e8d5e'

  url 'https://www.segger.com/downloads/systemview/systemview_mac_pkg'
  appcast 'https://www.corecode.io/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.segger.com/downloads/jlink/systemview_mac_pkg',
          configuration: version.no_dots
  name 'SystemView'
  homepage 'https://www.segger.com/products/development-tools/systemview'

  pkg "SystemView_V#{version.no_dots}_MacOSX.pkg"

  uninstall pkgutil: 'com.segger.pkg.SystemView'
end
