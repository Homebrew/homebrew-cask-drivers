cask 'luna-display' do
  version '3.2.1'
  sha256 'c402da35935f9a126500f87f74c2a914338201278da70db3a7770340956d87ac'

  # s3.amazonaws.com/s3.lunadisplay was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/s3.lunadisplay.com/downloads/LunaDisplay-#{version}.dmg"
  appcast 'https://s3.amazonaws.com/lunadisplay.com/downloads/sparkle.xml'
  name 'Luna Display'
  homepage 'https://lunadisplay.com/'

  depends_on macos: '>= :el_capitan'

  app 'Luna Display.app'

  uninstall quit: 'com.astro-hq.LunaDisplayMac'

  zap trash: [
               '~/Library/Caches/com.astro-hq.LunaDisplayMac',
               '~/Library/Preferences/com.astro-hq.LunaDisplayMac.plist',
               '~/Library/Saved Application State/com.astro-hq.LunaDisplayMac.savedState',
             ]
end
