cask 'luna-secondary' do
  version '4.0.3'
  sha256 '126cd64265c58c08a2097bd5ccd58376e84f943986023ad21fa17bf7a105fdce'

  # s3.amazonaws.com/s3.lunadisplay.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/s3.lunadisplay.com/downloads/LunaSecondary-#{version}.dmg"
  appcast 'https://s3.lunadisplay.com/downloads/luna-secondary-sparkle.xml'
  name 'Luna Secondary'
  homepage 'https://lunadisplay.com/'

  app 'Luna Secondary.app'

  zap trash: [
               '~/Library/Caches/com.astro-hq.LunaSecondaryMac',
               '~/Library/Preferences/com.astro-hq.LunaSecondaryMac.plist',
             ]
end
