cask 'hdhomerun' do
  version '20200701'
  sha256 '00cd17f828658b6a99a521d1e71f7d3ef9bf29ff0fa9a11f59e5ae8e398c3b81'

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
