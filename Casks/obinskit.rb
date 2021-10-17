cask "obinskit" do
  version "1.1.9"
  sha256 "c0aab195ac183b4175c3b3e1d34277451194c18b7fd26c0796e9d860ed1b1417"

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
