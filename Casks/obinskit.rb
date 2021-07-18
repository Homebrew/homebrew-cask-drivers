cask "obinskit" do
  version "1.1.7"
  sha256 "1092926d74f0f3735309d04d3527be94392344fab405a567f218b81cf46fa3d0"

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
