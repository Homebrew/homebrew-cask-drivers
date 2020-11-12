cask "sonos" do
  version "12.2"
  sha256 "342864b703d8f2d6c3e0601394273ab87cf9e9dcec1a77e6e78ce2e13339e182"

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.sonos.com/en/redir/controller_software_mac2",
          must_contain: version.no_dots
  name "Sonos"
  homepage "https://www.sonos.com/"

  auto_updates true

  app "Sonos.app"

  zap trash: "~/Library/Application Support/SonosV2"
end
