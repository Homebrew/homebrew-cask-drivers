cask "1kc-razer" do
  version "0.4.2"
  sha256 "e84c49d9846a79ac831fd5a6da8427594dc3792fc242a0eba6200dd05bd016f2"

  url "https://github.com/1kc/razer-macos/releases/download/v#{version}/Razer.macOS-#{version}.dmg"
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
