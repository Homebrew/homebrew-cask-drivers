cask 'sonos' do
  version '10.6.1'
  sha256 '87201066dbd93e9ea806e1faa85e861dd8bb44cf3a4c98b352f37ec7fc4803d3'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.sonos.com/en/redir/controller_software_mac',
          configuration: version.no_dots
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos.app'

  zap trash: '~/Library/Application Support/Sonos'
end
