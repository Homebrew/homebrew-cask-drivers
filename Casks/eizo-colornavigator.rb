cask "eizo-colornavigator" do
  version "7.1.7"
  sha256 "656efade81522cb35a8effdaf6c93f2426db10dc4454b04eeee41c78f315a0ff"

  url "https://www.eizoglobal.com/support/db/files/software/software/graphics/colornavigator#{version.major}/ColorNavigator#{version.no_dots}.pkg"
  name "Eizo ColorNavigator"
  desc "Calibrate Eizo Coloredge screens"
  homepage "https://www.eizoglobal.com/products/coloredge/cn#{version.major}/"

  livecheck do
    url "https://www.eizoglobal.com/support/db/products/download/900"
    regex(/Ver[._-]v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  pkg "ColorNavigator#{version.no_dots}.pkg"

  uninstall pkgutil: "com.eizo.pkg.ColorNavigator#{version.major.no_dots}",
            quit:    "com.eizo.ColorNavigator#{version.major}",
            delete:  "/Library/Application Support/EIZO/ColorNavigator #{version.major}",
            rmdir:   "/Library/Application Support/EIZO"

  zap trash: "~/Library/Application Support/EIZO/ColorNavigator #{version.major}",
      rmdir: "~/Library/Application Support/EIZO"
end
