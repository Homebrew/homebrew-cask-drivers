cask 'sonos' do
  version '8.11'
  sha256 '529a4c6aad89be4007257f1603957f5dbaff29981b613124efe271ec08f3ae8b'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  name 'Sonos'
  homepage 'http://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
