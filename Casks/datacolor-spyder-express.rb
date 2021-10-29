cask "datacolor-spyder-express" do
  version "5.8"
  sha256 "802bd97db43c07f8ebf2eae011d2d3643cfce1b40fc4770bb45173a92bb6dfba"

  url "https://d3d9ci7ypuovlo.cloudfront.net/spyder#{version.major}/Spyder#{version.major}Express_#{version}.pkg.zip",
      verified: "d3d9ci7ypuovlo.cloudfront.net/"
  name "Spyder Express"
  desc "Monitor calibration tool"
  homepage "https://www.datacolor.com/photography-design/s#{version.major}-welcome/"

  livecheck do
    url "http://goto.datacolor.com/download/mac/s#{version.major}x100b"
    strategy :header_match
    regex(/Express[._-](\d+(?:\.\d+)+)\.pkg\.zip/i)
  end

  auto_updates true

  pkg "Spyder#{version.major}Express #{version}.pkg"

  uninstall signal:  [
    ["TERM", "com.datacolor.spyder#{version.major}express"],
    ["TERM", "com.datacolor.spyder#{version.major}utility"],
  ],
            delete:  "/Applications/Datacolor/Spyder#{version.major}Express",
            pkgutil: "com.datacolor.pkg.spyder#{version.major}express",
            rmdir:   "/Applications/Datacolor"

  zap trash: [
    "~/Library/Application Support/MindVision/Spyder#{version.major}Express_Installer.xtm",
    "~/Library/Caches/com.datacolor.spyder#{version.major}express",
    "~/Library/Preferences/Datacolor/Spyder#{version.major}Express",
    "~/Library/Preferences/Datacolor/SpyderUtility",
    "~/Library/Saved Application State/com.datacolor.spyder#{version.major}express.savedState",
  ],
      rmdir: "~/Library/Preferences/Datacolor"
end
