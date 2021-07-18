cask "muteme" do
  version "0.5.1"
  sha256 "c6b3c62da90275900666446f736ec7289ef03a65d164f2e0d4350b587fb99d98"

  url "https://muteme.io/download/flavor/default/#{version}/osx_64/MuteMe-Client-#{version}.dmg",
      verified: "https://muteme.io/"
  name "muteme"
  desc "Companion app for the MuteMe physical mute button"
  homepage "https://muteme.com/"

  livecheck do
    url "https://downloads.muteme.com/download/latest/osx_64"
    strategy :header_match
  end

  app "MuteMe-Client.app"

  zap trash: [
    "~/Library/Application Support/MuteMe-Client/",
    "~/Library/Saved Application State/com.electron.muteme-client.savedState",
    "~/Library/Preferences/ByHost/com.electron.muteme-client.ShipIt.*.plist",
    "~//Library/Preferences/com.electron.muteme-client.plist",
    "~/Library/Caches/com.electron.muteme-client.ShipIt",
    "~/Library/Caches/com.electron.muteme-client",
  ]
end
