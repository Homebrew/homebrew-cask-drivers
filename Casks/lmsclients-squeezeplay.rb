cask "lmsclients-squeezeplay" do
  arch arm: "M1", intel: "x86_64"

  version "8.0.1r1402"
  sha256 arm:   "7a7e4e7f2e6dca9c8fc9708521983dbd29e40ccc10aec4f95e3aab46a1c998ab",
         intel: "43ca1028595bd1508d6d172c7ebed141941ad7012dbc3c79ee9709d8460e3174"

  url "https://downloads.sourceforge.net/lmsclients/SqueezePlay-#{arch}-#{version}.dmg",
      verified: "downloads.sourceforge.net/lmsclients/"
  name "Logitech LMS SqueezePlay Client"
  desc "Media server client"
  homepage "https://forums.slimdevices.com/showthread.php?96328-ANNOUNCE-SqueezePlay-for-Mac-OSX"

  livecheck do
    url "https://sourceforge.net/projects/lmsclients/rss?path=/squeezeplay/osx"
    strategy :page_match
    regex(/SqueezePlay-#{arch}-(\d+(?:\.\d+)*(?:r\d+)?)\.dmg/i)
  end

  app "SqueezePlay.app"

  uninstall quit: "com.logitech.squeezeplay"

  zap trash: [
    "~/Library/Preferences/SqueezePlay",
    "~/Library/Saved Application State/com.logitech.squeezeplay.savedState",
  ]
end
