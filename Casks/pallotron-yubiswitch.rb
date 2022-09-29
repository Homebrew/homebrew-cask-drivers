cask "pallotron-yubiswitch" do
  version "0.14"
  sha256 "fe514658b6bab343840172921f70f9f5d953eb04bc8f96c30800ac5906711966"

  url "https://github.com/pallotron/yubiswitch/releases/download/v#{version}/yubiswitch_#{version}.dmg"
  name "Yubiswitch"
  desc "Status bar application to enable/disable Yubikey Nano"
  homepage "https://github.com/pallotron/yubiswitch"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "yubiswitch.app"
end
