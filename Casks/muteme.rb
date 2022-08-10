cask "muteme" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.11.3"

  if Hardware::CPU.intel?
    sha256 "c078c558debb048eab39f23f80bdc9e978b968b0d64b88a47bf1ca5f96955364"
  else
    sha256 "ad648d8194d2f81a8e1d5fa4fbb122307f2103bfbb6671ff0c252336f896a7db"
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
