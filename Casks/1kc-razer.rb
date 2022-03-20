cask "1kc-razer" do
  version "0.4.9"
  sha256 "83f26f8dbc54990fc27e0835888e0b9b438be2578c6e686c2a34eec1be74528d"

  url "https://github.com/1kc/razer-macos/releases/download/v#{version}/Razer.macOS-#{version}-universal.dmg"
  name "Razer macOS"
  desc "Open source color effects manager for Razer devices"
  homepage "https://github.com/1kc/razer-macos"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Razer macOS.app"

  zap trash: [
    "~/Library/Preferences/com.electron.razer-macos.helper.Renderer.plist",
    "~/Library/Preferences/com.electron.razer-macos.plist",
    "~/Library/Saved Application State/com.electron.razer-macos.savedState",
  ]
end
