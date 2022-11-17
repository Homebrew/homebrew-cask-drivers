cask "sonos" do
  version "14.19,70.3.35070"
  sha256 "02bb81c1f24e40491511cf3e3e13c20256cbe9eb562c00d53dce9cd675be6347"

  url "https://update-software.sonos.com/software/epqbkaso/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
