cask "sonos" do
  version "12.1"
  sha256 "2322294f582dcb53c905d4a2df38db8519d0f551302a8f7afde03968958a46ca"

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.sonos.com/en/redir/controller_software_mac2",
          must_contain: version.no_dots
  name "Sonos"
  homepage "https://www.sonos.com/"

  auto_updates true

  app "Sonos.app"

  zap trash: "~/Library/Application Support/SonosV2"
end
