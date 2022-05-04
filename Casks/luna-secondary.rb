cask "luna-secondary" do
  version "5.1.6,4235"
  sha256 "43d936719fab4f7d5b01081d92e88afc6538148769b2e5117864224a5d8d457f"

  url "https://downloads.astropad.com/luna-secondary/mac/LunaSecondary-#{version.csv.first}.#{version.csv.second}.dmg"
  name "Luna Secondary"
  desc "Turn a computer or tablet into a second display"
  homepage "https://astropad.com/product/lunadisplay/"

  livecheck do
    url "https://s3.lunadisplay.com/downloads/luna-secondary-sparkle.xml"
    strategy :sparkle
  end

  app "Luna Secondary.app"

  zap trash: [
    "~/Library/Application Support/astropad",
    "~/Library/Application Support/com.astro-hq.LunaSecondaryMac",
    "~/Library/Caches/com.astro-hq.LunaSecondaryMac",
    "~/Library/Logs/Astropad",
    "~/Library/Preferences/com.astro-hq.LunaSecondaryMac.plist",
    "~/Library/Saved Application State/com.astro-hq.LunaSecondaryMac.savedState",
  ]
end
