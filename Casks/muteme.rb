cask "muteme" do
  version "0.7.0"
  sha256 "18092e2118721ff610d0defb5572b848b400e37bc29c26358ff40494995251ce"

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
