cask "sonos" do
  version "13.0"
  sha256 "f4a0112cbd5b8340ca25e6349daa8000690dd80f182702bdc399787e0e861101"

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.sonos.com/en/redir/controller_software_mac2",
          must_contain: version.no_dots
  name "Sonos"
  homepage "https://www.sonos.com/"

  auto_updates true

  app "Sonos.app"

  zap trash: "~/Library/Application Support/SonosV2"
end
