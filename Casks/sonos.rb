cask 'sonos' do
  version '9.2'
  sha256 'a4d731960cd4dd75c8eac2b557efc75f4870641665c71b500434507149ca4596'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
