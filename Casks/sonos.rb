cask 'sonos' do
  version '12.0'
  sha256 '7dcab807a75f9faef5941f96eff3e823771187e9f6fea3892d2674f192c0a02f'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.sonos.com/en/redir/controller_software_mac2',
          configuration: version.no_dots
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/SonosV2'
end
