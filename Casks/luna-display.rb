cask "luna-display" do
  version "5.2.2,4461"
  sha256 "e6093760edb6675422d4e2bbb4c7199f31d2b3771070399b835b99637bfcda17"

  url "https://downloads.astropad.com/luna/mac/LunaDisplay-#{version.csv.first}.#{version.csv.second}.dmg"
  name "Luna Display"
  desc "Use your iPad as a wireless second display"
  homepage "https://astropad.com/product/lunadisplay/"

  livecheck do
    url "https://s3.lunadisplay.com/downloads/sparkle.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "Luna Display.app"

  uninstall quit: "com.astro-hq.LunaDisplayMac"

  zap trash: [
    "~/Library/Application Support/astropad",
    "~/Library/Application Support/com.astro-hq.LunaDeviceSetupService",
    "~/Library/Application Support/com.astro-hq.LunaDisplayMac",
    "~/Library/Application Support/LunaDeviceSetupService",
    "~/Library/Application Support/LunaDisplay",
    "~/Library/Caches/com.astro-hq.LunaDeviceSetupService",
    "~/Library/Caches/com.astro-hq.LunaDisplayMac",
    "~/Library/Logs/Astropad",
    "~/Library/Preferences/com.astro-hq.AstroLauncher.shared.plist",
    "~/Library/Preferences/com.astro-hq.LunaDisplayMac.plist",
    "~/Library/Saved Application State/com.astro-hq.LunaDisplayMac.savedState",
  ]
end
