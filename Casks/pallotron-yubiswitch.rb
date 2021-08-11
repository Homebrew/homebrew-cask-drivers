cask "pallotron-yubiswitch" do
  version "0.12"
  sha256 "691ff7017c000211587217c60a6a9f352b3cb8d9ee2ce099f01d096d794a01ff"

  url "https://github.com/pallotron/yubiswitch/releases/download/v#{version}/yubiswitch_#{version}.dmg"
  appcast "https://github.com/pallotron/yubiswitch/releases.atom"
  name "Yubiswitch"
  desc "Status bar application to enable/disable Yubikey Nano"
  homepage "https://github.com/pallotron/yubiswitch"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "yubiswitch.app"
end
