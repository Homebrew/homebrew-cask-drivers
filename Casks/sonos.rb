cask "sonos" do
  version "14.20,70.4.35282"
  sha256 "a201d90832a59164809d48efa3f2d5e57ce1337e347b086bf2e982f789e88851"

  url "https://update-software.sonos.com/software/qcpuqybt/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
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
