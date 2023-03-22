cask "datacolor-spyder-pro" do
  version "5.8"
  sha256 "4d08a06b547859c8727d0bfc7ce1bc550363c189373afc95185da7047ad9362e"

  url "https://d3d9ci7ypuovlo.cloudfront.net/spyder#{version.major}/Spyder#{version.major}Pro_#{version}.pkg.zip",
      verified: "d3d9ci7ypuovlo.cloudfront.net/"
  name "Spyder Pro"
  desc "Monitor calibration tool"
  homepage "https://www.datacolor.com/photography-design/s#{version.major}-welcome/"

  livecheck do
    url "http://goto.datacolor.com/download/mac/s#{version.major}p100b"
    regex(/Pro[._-](\d+(?:\.\d+)+)\.pkg\.zip/i)
    strategy :header_match
  end

  auto_updates true

  pkg "Spyder#{version.major}Pro #{version}.pkg"

  uninstall signal:  [
              ["TERM", "com.datacolor.spyder#{version.major}pro"],
              ["TERM", "com.datacolor.spyder#{version.major}utility"],
            ],
            delete:  "/Applications/Datacolor/Spyder#{version.major}Pro",
            pkgutil: "com.datacolor.pkg.spyder#{version.major}pro",
            rmdir:   "/Applications/Datacolor"

  zap trash: [
        "~/Library/Application Support/MindVision/Spyder#{version.major}Pro_Installer.xtm",
        "~/Library/Caches/com.datacolor.spyder#{version.major}pro",
        "~/Library/Preferences/Datacolor/Spyder#{version.major}Pro",
        "~/Library/Preferences/Datacolor/SpyderUtility",
        "~/Library/Saved Application State/com.datacolor.spyder#{version.major}pro.savedState",
      ],
      rmdir: "~/Library/Preferences/Datacolor"
end
