cask "sonos" do
  version "14.10,68.3.30100"
  sha256 "364e86b6a8a97f43718f7ba205539c748d6759ebae1c573cdaefcb2cd6d27965"

  url "https://update-software.sonos.com/software/dpnugadm/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
