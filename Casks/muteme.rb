cask "muteme" do
  version "0.8.1"
  sha256 "f7a20627a3e649b2d624821c1db100636f8f7047a84011e418fa8bc14d95a5c3"

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
    "~/Library/Application Support/MuteMe-Client",
    "~/Library/Caches/com.electron.muteme-client",
    "~/Library/Caches/com.electron.muteme-client.ShipIt",
    "~/Library/Preferences/ByHost/com.electron.muteme-client.ShipIt.*.plist",
    "~/Library/Preferences/com.electron.muteme-client.plist",
    "~/Library/Saved Application State/com.electron.muteme-client.savedState",
  ]
end
