cask 'sonos' do
  version '8.3'
  sha256 'b6b3274b3e480cb81b01c25e237c4e1f914a6b40ce8ede13b4d0d06cedf48b68'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
