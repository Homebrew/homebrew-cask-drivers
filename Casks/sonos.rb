cask 'sonos' do
  version '9.1'
  sha256 'bacb03bf7dbd42325ea95e54bc94dbc3bb2414d2314c0f62adfb59a9a807e99b'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
