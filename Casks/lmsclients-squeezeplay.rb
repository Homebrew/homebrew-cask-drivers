cask "lmsclients-squeezeplay" do
  version "8.0.1r1310"
  sha256 "76dad20d8afb8e8dff656141f78ce82bc4f7b86c655083822855df8b1e8bdb44"

  url "https://downloads.sourceforge.net/lmsclients/SqueezePlay-x86_64-#{version}.dmg",
      verified: "downloads.sourceforge.net/lmsclients/"
  appcast "https://sourceforge.net/projects/lmsclients/rss?path=/squeezeplay/osx"
  name "Logitech LMS SqueezePlay Client"
  homepage "https://forums.slimdevices.com/showthread.php?96328-ANNOUNCE-SqueezePlay-for-Mac-OSX"

  app "SqueezePlay.app"

  uninstall quit: "com.logitech.squeezeplay"

  zap trash: [
    "~/Library/Preferences/SqueezePlay",
    "~/Library/Saved Application State/com.logitech.squeezeplay.savedState",
  ]
end
