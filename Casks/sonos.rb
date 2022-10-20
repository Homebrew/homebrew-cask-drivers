cask "sonos" do
  version "14.18,70.1-34112"
  sha256 "de091fcd1ac585260a3f4115a950031fd399114498bdfe5ac1e6a573484bc5ab"

  url "https://update-software.sonos.com/software/imaqiycw/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
