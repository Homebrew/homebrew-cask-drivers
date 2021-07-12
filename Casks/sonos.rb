cask "sonos" do
  version "13.1.4,63.2.90210"
  sha256 "01dc6e61c54f8cad64be16b33c9ee71afb06f42b5449abcb85fb7f56aa7fe2ca"

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
