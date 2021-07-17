cask "muteme" do
  version "0.5.0"
  sha256 "ffc7c22283fdd9cb5522c5b7f923e6642fae1bc494156fce191c0ab5c83e56a6"

  url "https://muteme.io/download/flavor/default/0.5.0/osx_64/MuteMe-Client-#{version}.dmg",
      verified: "https://muteme.io/"
  name "muteme"
  desc "Companion app for the MuteMe physical mute button"
  homepage "https://muteme.com/"

  livecheck do
    url "https://muteme.io/download/latest/osx"
    strategy :header_match
  end

  app "MuteMe-Client.app"

  zap trash: [
    "~/Library/Application Support/MuteMe-Client/",
    "~/Library/Saved Application State/com.electron.muteme-client.savedState",
    "~/Library/Preferences/ByHost/com.electron.muteme-client.ShipIt.*.plist",
    "~//Library/Preferences/com.electron.muteme-client.plist",
    "~/Library/Caches/com.electron.muteme-client.ShipIt",
    "~/Library/Caches/com.electron.muteme-client"
  ]

end
