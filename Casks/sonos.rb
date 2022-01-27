cask "sonos" do
  version "14.0<span class="x x-first x-last">,67.1.25130</span>"
  sha256 "87efca51d850a0eb1d740b5e28879cf2bf50f98b802b990522923596c13462f1"

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
