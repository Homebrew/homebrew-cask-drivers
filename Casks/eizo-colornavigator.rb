cask "eizo-colornavigator" do
  version "7.13"
  sha256 "45d9966ac09e8b4b428fcb870ce7a991e1f4f6a38898407922bb31b3aa1f53a1"

  url "https://www.eizoglobal.com/support/db/files/software/software/graphics/colornavigator#{version.major}/ColorNavigator#{version.no_dots}.pkg"
  name "Eizo ColorNavigator"
  desc "Calibrate Eizo Coloredge screens"
  homepage "https://www.eizoglobal.com/products/coloredge/cn7/"

  pkg "ColorNavigator#{version.no_dots}.pkg"

  uninstall pkgutil: "com.eizo.pkg.ColorNavigator#{version.major.no_dots}",
            quit:    "com.eizo.ColorNavigator#{version.major}",
            delete:  "/Library/Application Support/EIZO/ColorNavigator #{version.major}",
            rmdir:   "/Library/Application Support/EIZO"

  zap trash: "~/Library/Application Support/EIZO/ColorNavigator #{version.major}",
      rmdir: "~/Library/Application Support/EIZO"
end
