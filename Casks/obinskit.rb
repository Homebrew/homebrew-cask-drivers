cask "obinskit" do
  version "1.2.10"
  sha256 "4b62b19ba5e10b2d31a3240d72dbd141e9fd6911d354b958af95027b4148b10d"

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
