cask "luna-secondary" do
  version "4.5.0"
  sha256 "38fca2cafa45cc08d12dedf5973850b1dcf99f35ab20428927ca4fa7c6a91dda"

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
