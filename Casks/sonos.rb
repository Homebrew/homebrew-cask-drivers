cask 'sonos' do
  version '8.1'
  sha256 'a0530b7e023f94df84072b6c7e29e8704d07672f4f8da04581c5b619845e82c8'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  name 'Sonos'
  homepage 'http://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
