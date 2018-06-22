cask 'sonos' do
  version '8.6'
  sha256 '5485547c0c8c520e8562c151be9bc1b73b076a977cf4d6ed2bf7926a9bed7746'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
