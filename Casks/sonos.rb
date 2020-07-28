cask "sonos" do
  version "12.0.3"
  sha256 "ab90f8d536bee88debd300d3009d3c947bbddc567aed68099b339eee260ed8ca"

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.sonos.com/en/redir/controller_software_mac2",
          must_contain: version.no_dots
  name "Sonos"
  homepage "https://www.sonos.com/"

  auto_updates true

  app "Sonos.app"

  zap trash: "~/Library/Application Support/SonosV2"
end
