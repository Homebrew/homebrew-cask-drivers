cask "muteme" do
  arch = Hardware::CPU.intel? ? "osx_64" : "osx_arm64"

  version "0.10.1"

  if Hardware::CPU.intel?
    sha256 "5d8b6f0f59c7d3a216a98fe559df150e76d0a20612ddd12557042185ed8bb727"
  else
    sha256 "29044349f38b51896efb97acb5576a63785a0e7ce9bc6a54278e52dc40cac1f5"
  end

  url "https://muteme.io/download/flavor/default/#{version}/#{arch}/MuteMe-Client-#{version}.dmg",
      verified: "muteme.io/download/flavor/default/"
  name "MuteMe"
  desc "Companion app for the MuteMe physical mute button"
  homepage "https://muteme.com/"

  livecheck do
    url "https://downloads.muteme.com/download/latest/#{arch}"
    strategy :header_match
  end

  app "MuteMe-Client.app"

  zap trash: [
    "~/Library/Application Support/MuteMe-Client",
    "~/Library/Caches/com.electron.muteme-client",
    "~/Library/Caches/com.electron.muteme-client.ShipIt",
    "~/Library/Preferences/ByHost/com.electron.muteme-client.ShipIt.*.plist",
    "~/Library/Preferences/com.electron.muteme-client.plist",
    "~/Library/Saved Application State/com.electron.muteme-client.savedState",
  ]
end
