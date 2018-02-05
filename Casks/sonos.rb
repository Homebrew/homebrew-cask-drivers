cask 'sonos' do
  version '8.3.1'
  sha256 '681766a0447b01d33e95470c32e2250e03e71b292f8e8538bd66e9bcbcf4fa16'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
