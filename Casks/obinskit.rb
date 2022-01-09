cask "obinskit" do
  version "1.2.11"
  sha256 "751676278cf6919059db67985572ff37b0515fc4937ab33aeae6987b7fb5c371"

  url "https://releases.obins.net/occ/darwin/x64/ObinsKit_#{version}_x64.dmg"
  name "ObinsKit"
  desc "Software for Anne Pro and Anne Pro 2"
  homepage "http://en.obins.net/obinskit"

  livecheck do
    url "https://releases.obins.net/occ/darwin/x64/latest-mac.yml"
    strategy :electron_builder
  end

  app "ObinsKit.app"

  zap trash: [
    "~/Library/Application Support/ObinsKit",
    "~/Library/Logs/ObinsKit",
    "~/Library/Preferences/net.obins.obinslab-starter.plist",
    "~/Library/Saved Application State/net.obins.obinslab-starter.savedState",
  ]
end
