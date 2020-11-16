cask "interstuhl-s40" do
  # NOTE: "4.0" is not a version number, but an intrinsic part of the product name
  version "1.0.4-g6230a286"
  sha256 "d45ee5ee247f3678955416f3943d05e6c1719e6c09f1af35dede71bf5cd0d65a"

  url "https://www.interstuhl.com/myInterstuhl/download/Mac_INTERSTUHL%20S4.0-#{version}.dmg"
  name "Interstuhl S4.0"
  homepage "https://www.interstuhl.com/myInterstuhl/uk-en/support.php"

  pkg "INTERSTUHL S4.0.pkg"

  uninstall pkgutil: "INTERSTUHL_S4.0"

  zap trash: [
    "~/Library/Application Support/Garmin/INTERSTUHL_S4.0",
    "~/Library/Logs/INTERSTUHL_S4.0",
    "~/Library/Preferences/com.garmin.INTERSTUHL_S4.0.plist",
  ]
end
