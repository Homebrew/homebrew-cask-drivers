cask "razer-macos" do
  version "0.3.4"
  sha256 "258bab06048b5b7b9dca76ed4ba75b9a1c65b9c9b3fe07dd1a777db0b634491f"

  url "https://github.com/1kc/razer-macos/releases/download/v#{version}/Razer.macOS-#{version}.dmg"
  name "Razer macOS"
  desc "Open source color effects manager for Razer devices on macOS"
  homepage "https://github.com/1kc/razer-macos"

  app "Razer macOS.app"
end
