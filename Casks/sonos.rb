cask 'sonos' do
  version '8.5.1'
  sha256 'ecd26d25b4c3f70d5796e6517810ca0af9e1af258d139170c3cb91c8ea445fee'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
