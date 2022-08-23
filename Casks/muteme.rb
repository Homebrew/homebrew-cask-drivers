cask "muteme" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.12.1"
  sha256 arm:   "d54d8b292937e76df85b6a462ea52416232e105637c91f0038aa497eba61f32e",
         intel: "5b722eb9d4fca914791e9167995d1870505c800600ddd69101374681f313e380"

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
