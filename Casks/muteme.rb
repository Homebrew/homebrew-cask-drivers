cask "muteme" do
  arch = Hardware::CPU.intel? ? "osx_64" : "osx_arm64"

  version "0.9.2"

  if Hardware::CPU.intel?
    sha256 "788efd319495b9b221c5a4706d2e63c6147d807c168ec2ae7a39d9ac6d521c5d"
  else
    sha256 "9bc1225d65931c189ad953c90c8e67299d9d7336728312754bc430607dab7397"
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
