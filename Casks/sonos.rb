cask "sonos" do
  version "14.12,69.1.31120"
  sha256 "f8c7a048d7e6185accab9dedaf0fb69c64c25a77ae2a68e7ac1141b3767c3dd6"

  url "https://update-software.sonos.com/software/flfowmpo/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
