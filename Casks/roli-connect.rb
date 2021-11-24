cask "roli-connect" do
  version "1.0.18"
  sha256 :no_check

  url "https://api.roli.com/api/v1/product/com.roli.hub/latest/osx"
  appcast "https://roli.com/start"
  name "ROLI Connect"
  desc "A tools manager for ROLI products"
  homepage "https://roli.com"

  app "ROLI Connect.app"

  uninstall quit: "com.roli.hub"

  zap trash: [
    "~/Library/Application Support/ROLI Connect",
    "~/Library/Logs/ROLI Connect",
    "~/Library/Preferences/com.roli.hub.plist",
    "~/Library/Preferences/com.roli.hub.helper.plist",
    "~/Library/Saved Application State/com.roli.hub.savedState",
  ]
end
