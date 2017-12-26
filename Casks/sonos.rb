cask 'sonos' do
  version '8.22'
  sha256 '5ef33957875795a2bf9b7933d35559e4fce62d9c5e2491a5623cdfe641c2d35a'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
