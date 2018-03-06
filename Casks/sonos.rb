cask 'sonos' do
  version '8.4'
  sha256 'b45e12c6ad381abbebe0623936c2d12354e95a4302dc1d6b99c20e478ab57f11'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
