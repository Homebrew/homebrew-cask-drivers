cask 'luna-display' do
  version '4.2.0'
  sha256 '00b68566d15cebb78ccbe642bf090e06053f40c48e9ea230141511d702c74f0f'

  # s3.amazonaws.com/s3.lunadisplay.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/s3.lunadisplay.com/downloads/LunaDisplay-#{version}.dmg"
  appcast 'https://s3.lunadisplay.com/downloads/sparkle.xml'
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
