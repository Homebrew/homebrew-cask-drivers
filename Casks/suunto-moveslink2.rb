cask "suunto-moveslink2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.4.4,5995"
  sha256 "474ec979b4fb9b6c2319a61162e95ca895eb9949b3f2a72a7365561bcf651a8c"

  url "https://d1c229iib3zm7m.cloudfront.net/mac/Moveslink2_#{version.before_comma.dots_to_underscores}.dmg",
      verified: "d1c229iib3zm7m.cloudfront.net/"
  name "Suunto Moveslink2"
  desc "Connect Suunto Ambit or Traverse watch to Movescount"
  homepage "https://www.movescount.com/connect?os=mac"

  livecheck do
    url "https://d1c229iib3zm7m.cloudfront.net/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Moveslink2.app"

  uninstall quit: "Suunto.Moveslink2"

  zap trash: [
    "~/Library/Application Support/Suunto/Moveslink2",
    "~/Library/Caches/Suunto.Moveslink2",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/Suunto.Moveslink2",
    "~/Library/Preferences/Suunto.Moveslink2.plist",
  ],
      rmdir: "~/Library/Application Support/Suunto"
end
