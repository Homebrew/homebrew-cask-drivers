cask 'luna-secondary' do
  version '4.2.0'
  sha256 'b7796ae945a9fba9e4cdd69b9c2f0fba0b3ca76a17f26551724529c44cf53242'

  # s3.amazonaws.com/s3.lunadisplay.com/ was verified as official when first introduced to the cask
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
