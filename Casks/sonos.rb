cask 'sonos' do
  version '8.21'
  sha256 '81e579f4494ab986f33091990f79a8463e77378f45a299d08dc9b4311532f42d'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  name 'Sonos'
  homepage 'http://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
