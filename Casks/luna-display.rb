cask "luna-display" do
  version "5.1.7,4323"
  sha256 "0df8ff71ff9787d812c821c8dca6c03413b96f094c8a99ba8d65a05a59474efc"

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
