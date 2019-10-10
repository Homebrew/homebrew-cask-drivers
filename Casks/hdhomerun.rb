cask 'hdhomerun' do
  version '20190621'
  sha256 '51f19ba9ca8255f16a3854aee1f2990404f46973f4434b9b90e3a2e6cf3a0fc1'

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
