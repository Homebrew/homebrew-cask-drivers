cask "obinskit" do
  version "1.1.5"
  sha256 "5204f9d567fbddc2778c5e7af65f0fedc1661734bca111689d8af130e134ba81"

  url "http://releases.obins.net/occ/darwin/x64/ObinsKit_#{version}_x64.dmg"
  appcast "http://releases.obins.net/occ/darwin/x64/latest-mac.yml"
  name "ObinsKit"
  homepage "http://en.obins.net/obinskit"

  app "ObinsKit.app"

  zap trash: [
    "~/Library/Application Support/ObinsKit",
    "~/Library/Logs/ObinsKit",
    "~/Library/Preferences/net.obins.obinslab-starter.plist",
    "~/Library/Saved Application State/net.obins.obinslab-starter.savedState",
  ]
end
