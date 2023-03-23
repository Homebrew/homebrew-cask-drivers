cask "datacolor-spyder-express" do
  version "5.8"
  sha256 "d06b8725a890d977f1928382147115d51950298f50b4093f73d123cb2a7dc083"

  url "https://d3d9ci7ypuovlo.cloudfront.net/spyder#{version.major}/Spyder#{version.major}Express_#{version}.pkg.zip",
      verified: "d3d9ci7ypuovlo.cloudfront.net/"
  name "Spyder Express"
  desc "Monitor calibration tool"
  homepage "https://www.datacolor.com/photography-design/s#{version.major}-welcome/"

  livecheck do
    url "http://goto.datacolor.com/download/mac/s#{version.major}x100b"
    regex(/Express[._-](\d+(?:\.\d+)+)\.pkg\.zip/i)
    strategy :header_match
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
