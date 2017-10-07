cask 'sonos' do
  version '8.0'
  sha256 '4362657796f74c66c1f342d50cc40233a04bc51a34bcc069bab57434c43541b7'

  url 'https://update.sonos.com/software/mac/mdcr/SonosDesktopController80.dmg'
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application\ Support/Sonos/'
end
