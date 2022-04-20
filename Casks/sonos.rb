cask "sonos" do
  version "14.6"
  sha256 "7b871a36c9b2c0bf1c5f65b8a3159012c7a67645dc0f42dc8905a6945ad10588"

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.csv.first.no_dots}.dmg"
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
