cask "lmsclients-squeezeplay" do
  version "7.8.0r1286"
  sha256 "f0dd0590013d4472fcbd1fc745581616120957cd0f9136c6483b0b7347f61d66"

  # downloads.sourceforge.net/lmsclients/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lmsclients/SqueezePlay-x86_64-#{version}.dmg"
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
