cask 'luna-display' do
  version '3.0'
  sha256 '4892613350cd6f62562c82bb496877d1881d0963d3b8b3a5083783346b9cbdb7'

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
