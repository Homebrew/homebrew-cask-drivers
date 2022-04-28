cask "muteme" do
  arch = Hardware::CPU.intel? ? "osx_64" : "osx_arm64"

  version "0.9.3"

  if Hardware::CPU.intel?
    sha256 "2464f3be63ce5b127c1a075f96dcd092cb69b236bfc3a2e69166c48da9641351"
  else
    sha256 "04a5fbe54cb0c2a12bcc7884f280a350521f5197504502a13896de54a420736d"
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
