cask "eizo-colornavigator" do
  version "7.11"
  sha256 "4d0c5064bfcfe9f1387bb44792a0835a627a9f4cf49dd20daf9f64662a733af8"

  url "https://www.eizoglobal.com/support/db/files/software/software/graphics/colornavigator#{version.major}/ColorNavigator#{version.no_dots}.pkg"
  name "Eizo ColorNavigator"
  desc "Calibrate Eizo Coloredge screens"
  homepage "https://www.eizoglobal.com/products/coloredge/cn7/"

  pkg "ColorNavigator#{version.no_dots}.pkg"

  uninstall pkgutil: [
    "com.eizo.pkg.ColorNavigator#{version.major.no_dots}",
  ],
            quit:    "com.eizo.ColorNavigator#{version.major}"

  zap delete: [
    "/Library/Application Support/EIZO/ColorNavigator 7",
    "~/Library/Application Support/EIZO/ColorNavigator 7",
  ],
      rmdir: [
        "/Library/Application Support/EIZO",
         "~/Library/Application Support/EIZO",
           ]
end