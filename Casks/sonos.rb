cask "sonos" do
  version "13.1,63.2.88230"
  sha256 "f5a5987f0c54bc20d204eb9f99991a0e3c1ed346ec89e25ae3d80dffae380c2a"

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
