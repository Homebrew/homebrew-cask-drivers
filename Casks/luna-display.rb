cask "luna-display" do
  version "5.2.0,4455"
  sha256 "bdfb602302bc05aabd379b4d2e27ce908698f796272dff49a6703005bdda41a5"

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
