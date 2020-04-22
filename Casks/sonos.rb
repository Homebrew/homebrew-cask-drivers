cask 'sonos' do
  version '11.1'
  sha256 'f93830f89073598eccf92c7c3d9e064330252e8e7152cdcb75094a4890ec13e8'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.sonos.com/en/redir/controller_software_mac',
          configuration: version.no_dots
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
