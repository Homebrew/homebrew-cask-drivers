cask "muteme" do
  arch arm: "osx_arm64", intel: "osx_64"
  livecheck_folder = on_arch_conditional arm: "osx_arm64", intel: "osx"

  version "0.14.2"
  sha256 arm:   "2f21e8c8bcc1d2a191baabe89de6fba03501037354f42b0c864915281beb7114",
         intel: "9f3449d06748fc3bd63d636e6b7ea5b6e9a84aa8be0a4d3783337bc711943bcf"

  url "https://muteme.io/download/flavor/default/#{version}/#{arch}/MuteMe-Client-#{version}.dmg",
      verified: "muteme.io/download/flavor/default/"
  name "MuteMe"
  desc "Companion app for the MuteMe physical mute button"
  homepage "https://muteme.com/"

  livecheck do
    url "https://downloads.muteme.com/download/latest/#{livecheck_folder}"
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
