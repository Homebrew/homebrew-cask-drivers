cask 'luna-secondary' do
  version '4.1.0'
  sha256 '31085fde0f563952db9dc665fcb095e6a05b4d5b8dbd2117c8b400e8063ec1f4'

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
