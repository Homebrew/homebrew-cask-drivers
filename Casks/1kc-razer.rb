cask "1kc-razer" do
  version "0.4.1"
  sha256 "011897b134fd2870a9ea4a2d6c43cde4c8f83e5e589cbc5657ffce2c5a9cd0c6"

  url "https://github.com/1kc/razer-macos/releases/download/v#{version}/Razer.macOS-#{version}.dmg"
  name "Razer macOS"
  desc "Open source color effects manager for Razer devices"
  homepage "https://github.com/1kc/razer-macos"

  app "Razer macOS.app"

  zap trash: [
    "~/Library/Preferences/com.electron.razer-macos.helper.Renderer.plist",
    "~/Library/Preferences/com.electron.razer-macos.plist",
    "~/Library/Saved Application State/com.electron.razer-macos.savedState",
  ]
end
