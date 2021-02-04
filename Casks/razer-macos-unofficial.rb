cask "razer-macos-unofficial" do
  version "0.3.4"
  sha256 "258bab06048b5b7b9dca76ed4ba75b9a1c65b9c9b3fe07dd1a777db0b634491f"

  url "https://github.com/1kc/razer-macos/releases/download/v#{version}/Razer.macOS-#{version}.dmg"
  appcast "https://github.com/1kc/razer-macos/releases.atom"  
  name "Razer macOS"
  desc "Open source color effects manager for Razer devices"
  homepage "https://github.com/1kc/razer-macos"

  app "Razer macOS.app"i
  zap trash: [
               '~/Library/Preferences/com.electron.razer-macos.helper.Renderer.plist',
               '~/Library/Preferences/com.electron.razer-macos.plist',
               '~/Library/Saved Application State/com.electron.razer-macos.savedState'
             ]
end
