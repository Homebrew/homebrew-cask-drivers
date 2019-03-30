cask 'luna-display' do
  version '3.0.1'
  sha256 'a1b68d69947c8417c8e287cce26daf56ab75cb44cc4bb48f42f51aab5b12ba5f'

  # s3.amazonaws.com/s3.lunadisplay was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/s3.lunadisplay.com/downloads/LunaDisplay-#{version}.zip"
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
