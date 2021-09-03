cask "1kc-razer" do
  version "0.4.5"
  sha256 "5e5136c12b1138b5719a1234192c1fa7bcc85b9822bd2a9832ace73173590286"

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
