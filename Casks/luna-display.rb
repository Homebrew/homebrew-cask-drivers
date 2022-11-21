cask "luna-display" do
  version "5.2.1,4459"
  sha256 "e8580cbc559150768cf40ad8d8931c5eba45148e3c21a117810de6982f86d1c1"

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
