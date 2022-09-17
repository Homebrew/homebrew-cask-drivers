cask "sonos" do
  version "14.15,69.1.32152"
  sha256 "b1953cd340cf6d4d1b63564579a9fef76fa88e7a94c90861ac01aee5faf4e8cd"

  url "https://update-software.sonos.com/software/bzxztwjn/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
