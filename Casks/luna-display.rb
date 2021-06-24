cask "luna-display" do
  version "4.5.0"
  sha256 "4d833f40333fe7139e741470c250abe171bc0013a51378934f19fb534379dfaf"

  url "https://s3.amazonaws.com/s3.lunadisplay.com/downloads/LunaDisplay-#{version}.dmg",
      verified: "s3.amazonaws.com/s3.lunadisplay.com/downloads/"
  name "Luna Display"
  desc "Use your iPad as a wireless second display"
  homepage "https://lunadisplay.com/"

  livecheck do
    url "https://downloads.astropad.com/luna/latest"
    strategy :header_match
  end

  depends_on macos: ">= :el_capitan"

  app "Luna Display.app"

  uninstall quit: "com.astro-hq.LunaDisplayMac"

  zap trash: [
    "~/Library/Application Support/com.astro-hq.LunaDeviceSetupService",
    "~/Library/Application Support/com.astro-hq.LunaDisplayMac",
    "~/Library/Application Support/LunaDisplay",
    "~/Library/Caches/com.astro-hq.LunaDisplayMac",
    "~/Library/Logs/Astropad",
    "~/Library/Preferences/com.astro-hq.AstroLauncher.shared.plist",
    "~/Library/Preferences/com.astro-hq.LunaDisplayMac.plist",
    "~/Library/Saved Application State/com.astro-hq.LunaDisplayMac.savedState",
  ]
end
