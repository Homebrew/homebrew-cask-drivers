cask 'hdhomerun' do
  version '20190417'
  sha256 '65135fc468bc4d3547fe714517ee00ef6841726bfa9580c810978ed634dfa983'

  url "https://download.silicondust.com/hdhomerun/hdhomerun_mac_#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://download.silicondust.com/hdhomerun/hdhomerun_mac.dmg'
  name 'HDHomeRun'
  homepage 'https://www.silicondust.com/support/downloads/'

  pkg 'HDHomeRun Installer.pkg'

  uninstall pkgutil: 'com.silicondust.*hdhomerun'
end
