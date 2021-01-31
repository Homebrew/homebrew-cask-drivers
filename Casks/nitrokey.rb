cask "nitrokey" do
  version "1.4"
  sha256 "80f6c95f5fa8320e4e323e1f4c11ac428ad4b731ae186891a4a66c7c056485f0"

  url "https://github.com/Nitrokey/nitrokey-app/releases/download/v#{version}/Nitrokey-App.dmg",
      verified: "github.com/Nitrokey/nitrokey-app/"
  appcast "https://github.com/Nitrokey/nitrokey-app/releases.atom"
  name "Nitrokey App"
  homepage "https://www.nitrokey.com/download/macos"

  app "Nitrokey App v#{version}.app"

  uninstall quit: "com.nitrokey.nitrokey-app"

  zap trash: [
    "~/Library/Preferences/com.nitrokey.Nitrokey App.plist",
    "~/Library/Saved Application State/com.nitrokey.nitrokey-app.savedState",
  ]
end
