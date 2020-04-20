cask 'luna-display' do
  version '4.0.3'
  sha256 '7a7525fc8287c3a6f676ca1d01643492002dee7243e151c04f7b7d9c5884dbcf'

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
