cask "luna-display" do
  version "4.3.0"
  sha256 "5c483aa7b9104f527de425b38ec2c3a786ff8f21cdbbd917c4f0f47f135e61c1"

  url "https://s3.amazonaws.com/s3.lunadisplay.com/downloads/LunaDisplay-#{version}.dmg",
      verified: "s3.amazonaws.com/s3.lunadisplay.com/"
  appcast "https://s3.lunadisplay.com/downloads/sparkle.xml"
  name "Luna Display"
  homepage "https://lunadisplay.com/"

  depends_on macos: ">= :el_capitan"

  app "Luna Display.app"

  uninstall quit: "com.astro-hq.LunaDisplayMac"

  zap trash: [
    "~/Library/Caches/com.astro-hq.LunaDisplayMac",
    "~/Library/Preferences/com.astro-hq.LunaDisplayMac.plist",
    "~/Library/Saved Application State/com.astro-hq.LunaDisplayMac.savedState",
  ]
end
