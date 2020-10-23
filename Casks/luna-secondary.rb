cask "luna-secondary" do
  version "4.3.0"
  sha256 "92e4368566984f18e686e90ccd3171bd05e425da439420f4642d267b2f20d711"

  # s3.amazonaws.com/s3.lunadisplay.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/s3.lunadisplay.com/downloads/LunaSecondary-#{version}.dmg"
  appcast "https://s3.lunadisplay.com/downloads/luna-secondary-sparkle.xml"
  name "Luna Secondary"
  desc "Software to use a wireless second display"
  homepage "https://lunadisplay.com/"

  app "Luna Secondary.app"

  zap trash: [
    "~/Library/Caches/com.astro-hq.LunaSecondaryMac",
    "~/Library/Preferences/com.astro-hq.LunaSecondaryMac.plist",
  ]
end
