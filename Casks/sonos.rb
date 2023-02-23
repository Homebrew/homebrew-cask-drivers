cask "sonos" do
  version "15.1,71.1-38080"
  sha256 "d547325770c8f3e89b68dd97a28e2bd5f92a1ae3ef5bebf7b3d64cd0170a88c0"

  url "https://update-software.sonos.com/software/aomqdjww/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
