cask 'hdhomerun' do
  version '20200225'
  sha256 '1958af0502386e9fbb5f3887f87bb1578e033c3b31708ec8857de58c7db52d16'

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
