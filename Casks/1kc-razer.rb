cask "1kc-razer" do
  version "0.4.7"
  sha256 "5b1b13f5c0addbd8b151dfcea9045ed443427fb3093d51bd91210d8fe5dd54fe"

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
