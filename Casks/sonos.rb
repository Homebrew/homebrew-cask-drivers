cask 'sonos' do
  version '8.2'
  sha256 '29b84485e301602bf435c4a10f156c2496d78c64fab4855e37f4f4f82b55f029'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  name 'Sonos'
  homepage 'http://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
