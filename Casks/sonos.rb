cask 'sonos' do
  version '8.5'
  sha256 '54435c2efa8b2f2228c901df4a261f61edd7a4daca936e7e1d934c4876de7b8c'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
