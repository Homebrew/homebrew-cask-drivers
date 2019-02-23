cask 'hdhomerun' do
  version '20190221'
  sha256 'a7f4895b756e2876f8197c9b95a17a41d6d2e4997ff0c902e5fa0f72f9037569'

  url "https://download.silicondust.com/hdhomerun/hdhomerun_mac_#{version}.dmg"
  name 'HDHomeRun'
  homepage 'https://www.silicondust.com/support/downloads/'

  pkg 'HDHomeRun Installer.pkg'

  uninstall pkgutil: 'com.silicondust.*hdhomerun'
end
