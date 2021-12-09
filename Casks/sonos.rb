cask "sonos" do
  version "13.4.1,66.4.23300"
  sha256 "f92473d3959ef36ef174a5b0e57c2883d170f5a2a904f134df783357c39fd188"

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
