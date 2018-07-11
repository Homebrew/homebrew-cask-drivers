cask 'sonos' do
  version '9.0'
  sha256 'da033560d4a52444293a51d0f2010916745c629de2a06eb5e95c9b12e33577c3'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
