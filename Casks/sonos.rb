cask 'sonos' do
  version '9.3'
  sha256 '9c26fe0562b9df0042c03a170bd1ff609c5c880498616ed2418f0819178ea67b'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
