cask "obinskit" do
  version "1.1.8"
  sha256 "e45c3662475871d28b1aaa95ecda9ff44b8cdb387cee168c9f8200775c1b3fc0"

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
