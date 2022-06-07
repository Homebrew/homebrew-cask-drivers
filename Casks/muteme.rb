cask "muteme" do
  arch = Hardware::CPU.intel? ? "osx_64" : "osx_arm64"

  version "0.10.3"

  if Hardware::CPU.intel?
    sha256 "2043a7e0f4c8b7edabca7d17b1bf3deeca8e1106c8e834de7166f64eb96384ef"
  else
    sha256 "dbe606b91204d3678e1ec9fc307cd0f30a76dececa2bb1090bac24bd14548f71"
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
