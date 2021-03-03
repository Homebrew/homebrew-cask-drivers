cask "luna-display" do
  version "4.4.0"
  sha256 "ff3b201e1a0c4be8c67c59a82df666ba99ef0f8b85bb4e70ee1e64d2693f2c25"

  url "https://s3.amazonaws.com/s3.lunadisplay.com/downloads/LunaDisplay-#{version}.dmg",
      verified: "s3.amazonaws.com/s3.lunadisplay.com/downloads/"
  appcast "https://s3.lunadisplay.com/downloads/sparkle.xml"
  name "Luna Display"
  desc "Use your iPad as a wireless second display"
  homepage "https://lunadisplay.com/"

  depends_on macos: ">= :el_capitan"

  app "Luna Display.app"

  uninstall quit: "com.astro-hq.LunaDisplayMac"

  zap trash: [
    "~/Library/Caches/com.astro-hq.LunaDisplayMac",
    "~/Library/Preferences/com.astro-hq.LunaDisplayMac.plist",
    "~/Library/Preferences/com.astro-hq.AstroLauncher.shared.plist",
    "~/Library/Application Support/com.astro-hq.LunaDisplayMac",
    "~/Library/Application Support/com.astro-hq.LunaDeviceSetupService",
    "~/Library/Application Support/LunaDisplay",
    "~/Library/Saved Application State/com.astro-hq.LunaDisplayMac.savedState",
    "~/Library/Logs/Astropad",
  ]
end
