cask "sonos" do
  version "14.16,69.1.33120"
  sha256 "2ceef9d0322cba7972cd84116093ee3a3f30960387d7757f98394b4d55c24463"

  url "https://update-software.sonos.com/software/gjocspcx/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
