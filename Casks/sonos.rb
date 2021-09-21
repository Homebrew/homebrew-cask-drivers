cask "sonos" do
  version "13.3,65.1.21150"
  sha256 "1a03da1e60de06e6a7af3bb52687a22379a44b3d1c1b96766a46abab9b9fc466"

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.before_comma.no_dots}.dmg"
  name "Sonos"
  desc "Control your Sonos system"
  homepage "https://www.sonos.com/"

  livecheck do
    url "https://www.sonos.com/en/redir/controller_software_mac2"
    strategy :extract_plist
  end

  auto_updates true

  app "Sonos.app"

  zap trash: "~/Library/Application Support/SonosV2"
end
