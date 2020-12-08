cask "lmsclients-squeezeplay" do
  version "7.8.0r1291"
  sha256 "f712eb1fbdcb150a6f0e20827b15589411e9543dd3f7c5f6556314664784b4b7"

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
