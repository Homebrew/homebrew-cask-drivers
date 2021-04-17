cask "luna-secondary" do
  version "4.3.0"
  sha256 "619af97a113ddd9c4990df4eaaca7cd7c233e22e13db94e97812164d9086878e"

  url "https://s3.amazonaws.com/s3.lunadisplay.com/downloads/LunaSecondary-#{version}.dmg",
      verified: "s3.amazonaws.com/s3.lunadisplay.com/"
  name "Luna Secondary"
  desc "Turn a computer or tablet into a second display"
  homepage "https://lunadisplay.com/"

  livecheck do
    url "https://downloads.astropad.com/luna/latest-secondary"
    strategy :header_match
  end

  app "Luna Secondary.app"

  zap trash: [
    "~/Library/Caches/com.astro-hq.LunaSecondaryMac",
    "~/Library/Preferences/com.astro-hq.LunaSecondaryMac.plist",
  ]
end
