cask "lmsclients-squeezeplay" do
  version "8.0.1r1368"

  if Hardware::CPU.intel?
    sha256 "1f7794f7e119851a2176bacd0b3ae4da5e3aaf843f38f0a3df84f1da238c4887"

    url "https://downloads.sourceforge.net/lmsclients/SqueezePlay-x86_64-#{version}.dmg",
        verified: "downloads.sourceforge.net/lmsclients/"
  else
    sha256 "d58901a39278856e9fa1261043919d086c49ec822e2301317b5bcb4220f25a55"

    url "https://downloads.sourceforge.net/lmsclients/SqueezePlay-M1-#{version}.dmg",
        verified: "downloads.sourceforge.net/lmsclients/"
  end

  name "Logitech LMS SqueezePlay Client"
  desc "Media server client"
  homepage "https://forums.slimdevices.com/showthread.php?96328-ANNOUNCE-SqueezePlay-for-Mac-OSX"

  livecheck do
    url "https://sourceforge.net/projects/lmsclients/rss?path=/squeezeplay/osx"
    strategy :page_match
    regex(/SqueezePlay-x86_64-(\d+(?:\.\d+)*(?:r\d+)?)\.dmg/i)
  end

  app "SqueezePlay.app"

  uninstall quit: "com.logitech.squeezeplay"

  zap trash: [
    "~/Library/Preferences/SqueezePlay",
    "~/Library/Saved Application State/com.logitech.squeezeplay.savedState",
  ]
end
