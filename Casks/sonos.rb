cask "sonos" do
  version "14.15,69.1.32152"
  sha256 "bd1cb1a3f3cd3324259754c583ff559ed4bf868db7a59ad66c39e870948b8f23"

  url "https://update-software.sonos.com/software/hqppgqce/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
