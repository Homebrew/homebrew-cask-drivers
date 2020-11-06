cask "flashforge-flashprint" do
  version "4.4.0,2ed99e09e4bbe0e60afaf302d0d4524a"
  sha256 "674711e00df34808bb23091e4f8b87563854167a78546cf22d00907f341b5d9e"

  url "https://en.fss.flashforge.com/10000/software/#{version.after_comma}.zip"
  name "FlashPrint"
  homepage "https://www.flashforge.com/product-detail/40"

  auto_updates true

  pkg "FlashPrint.pkg"

  uninstall pkgutil: "com.sz3dp.pkg.FlashPrint"

  zap trash: "~/Library/Preferences/FlashForge.FlashPrint.plist"
end
