cask 'hdhomerun' do
  version '20200521'
  sha256 'b195cea70c305ad0827acce8708fda4f40c698ed167db088aae6a2d8b80aaf39'

  url "https://download.silicondust.com/hdhomerun/hdhomerun_mac_#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.silicondust.com/hdhomerun/hdhomerun_mac.dmg'
  name 'HDHomeRun'
  homepage 'https://www.silicondust.com/support/downloads/'

  pkg 'HDHomeRun Installer.pkg'

  uninstall pkgutil: 'com.silicondust.*hdhomerun'

  zap trash: [
               '~/Library/Caches/com.silicondust.hdhomerun',
               '~/Library/Saved Application State/com.silicondust.hdhomerun.savedState',
               '~/Library/WebKit/com.silicondust.hdhomerun',
             ]
end
