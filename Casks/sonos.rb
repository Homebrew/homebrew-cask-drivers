cask 'sonos' do
  version '10.5'
  sha256 '0b33fb2fe1c839b1824cdd597e2bc0e50ed9872cb64d32d5948f1486f9000091'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.sonos.com/en/redir/controller_software_mac',
          configuration: version.no_dots
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
