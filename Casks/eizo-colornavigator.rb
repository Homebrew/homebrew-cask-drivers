cask "eizo-colornavigator" do
  version "7.12"
  sha256 "8d49fe582889b44c4f7194935e96517341ac1180a07c8f3c6a33a3f7978cac38"

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
