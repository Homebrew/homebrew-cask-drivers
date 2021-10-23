cask "datacolor-spyder-elite" do
  version "5.8"
  sha256 "adfd31230abceb04a133d444e9184ea4d9936999d9e23ea54a7ee18b2f3de673"

  url "https://d3d9ci7ypuovlo.cloudfront.net/spyder#{version.major}/Spyder#{version.major}Elite_#{version}.pkg.zip",
      verified: "d3d9ci7ypuovlo.cloudfront.net/"
  name "Spyder Elite"
  desc "Monitor calibration tool"
  homepage "https://www.datacolor.com/photography-design/s#{version.major}-welcome/"

  livecheck do
    url "http://goto.datacolor.com/download/mac/s#{version.major}el100b"
    strategy :header_match
    regex(/Elite[._-](\d+(?:\.\d+)*)\.pkg\.zip/i)
  end

  auto_updates true

  pkg "Spyder#{version.major}Elite #{version}.pkg"

  uninstall signal:  [
    ["TERM", "com.datacolor.spyder#{version.major}elite"],
    ["TERM", "com.datacolor.spyder#{version.major}utility"],
  ],
            delete:  "/Applications/Datacolor/Spyder#{version.major}Elite",
            pkgutil: "com.datacolor.pkg.spyder#{version.major}elite",
            rmdir:   "/Applications/Datacolor"

  zap trash: [
    "~/Library/Application Support/MindVision/Spyder#{version.major}Elite_Installer.xtm",
    "~/Library/Caches/com.datacolor.spyder#{version.major}elite",
    "~/Library/Preferences/Datacolor/Spyder#{version.major}Elite",
    "~/Library/Preferences/Datacolor/SpyderUtility",
    "~/Library/Saved Application State/com.datacolor.spyder#{version.major}elite.savedState",
  ],
      rmdir: "~/Library/Preferences/Datacolor"
end
