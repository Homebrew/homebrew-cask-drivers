cask "lmsclients-squeezeplay" do
  version "8.0.1r1382"

  if Hardware::CPU.intel?
    sha256 "bcc278b08d367d47bfceba1b1adad40564bc0062c31014bd29ed9e3e60cbafe1"

    url "https://downloads.sourceforge.net/lmsclients/SqueezePlay-x86_64-#{version}.dmg",
        verified: "downloads.sourceforge.net/lmsclients/"
  else
    sha256 "a06f0f2a55bb82f7dbf7dd8408f39292eaed20c61d8ccde5ee42b0e24e14ac11"

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
