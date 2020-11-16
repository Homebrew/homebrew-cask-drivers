cask "datacolor-spyder-elite" do
  version "5.7"
  sha256 "4474f20807ab97c3337a4d03526b7a348c387509fb8ff6cec97276269ecfc495"

  # d3d9ci7ypuovlo.cloudfront.net/spyder was verified as official when first introduced to the cask
  url "https://d3d9ci7ypuovlo.cloudfront.net/spyder#{version.major}/Spyder5Elite_#{version}.pkg.zip"
  name "Spyder Elite"
  homepage "https://www.datacolor.com/photography-design/product-overview/spyder#{version.major}-family/#spyder#{version.major}elite"

  auto_updates true

  pkg "Spyder5Elite #{version}.pkg"

  uninstall signal:  [
    ["TERM", "com.datacolor.spyder#{version.major}elite"],
    ["TERM", "com.datacolor.spyder#{version.major}utility"],
  ],
            delete:  "/Applications/Datacolor/Spyder#{version.major}Elite",
            pkgutil: "com.datacolor.pkg.spyder5elite",
            rmdir:   "/Applications/Datacolor"

  zap trash: [
    "~/Library/Application Support/MindVision/Spyder5Elite_Installer.xtm",
    "~/Library/Caches/com.datacolor.spyder5elite",
    "~/Library/Preferences/Datacolor/Spyder5Elite",
    "~/Library/Preferences/Datacolor/SpyderUtility",
    "~/Library/Saved Application State/com.datacolor.spyder5elite.savedState",
  ],
      rmdir: "~/Library/Preferences/Datacolor"
end
