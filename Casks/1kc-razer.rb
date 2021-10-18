cask "1kc-razer" do
  version "0.4.5"
  sha256 "8187f9fed1d8160f9d954294ee567af2d833325ada3218f138317b5b944f5fdd"

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
