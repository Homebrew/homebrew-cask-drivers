cask "muteme" do
  arch = Hardware::CPU.intel? ? "osx_64" : "osx_arm64"

  version "0.11.0"

  if Hardware::CPU.intel?
    sha256 "27d345ffe57d5112f418f1f87f68227e5387680cad2ebc7c94acce25810dc25c"
  else
    sha256 "843db0fcbec7ddd37689bd1f0555ae67d9c58e14d8ea4757fe288b6175a16816"
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
