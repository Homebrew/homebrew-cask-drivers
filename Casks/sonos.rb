cask "sonos" do
  version "15.2.1,71.1.38240"
  sha256 "0a482144e610c9f62a8d9d653c4ab2dbb8676c585aba678d7ea2c4ab9735cb65"

  url "https://update-software.sonos.com/software/veqbtaxi/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
