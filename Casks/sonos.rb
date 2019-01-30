cask 'sonos' do
  version '10.0'
  sha256 '5ffefc590221a1e3f2e9a0d818b30842113eca2f53bed6a1d6cd04cb61d2a43d'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
