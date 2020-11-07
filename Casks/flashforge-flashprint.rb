cask "flashforge-flashprint" do
  version "4.5.1,1039f4a96ea3c14f9b7c4ef2856653ee"
  sha256 "2442e58761417cdbf57d4a6f93c1184c7c1f24fde437aa14776008b14098690d"

  url "https://en.fss.flashforge.com/10000/software/#{version.after_comma}.zip"
  name "FlashPrint"
  homepage "https://www.flashforge.com/product-detail/40"

  auto_updates true

  pkg "FlashPrint.pkg"

  uninstall pkgutil: "com.sz3dp.pkg.FlashPrint"

  zap trash: "~/Library/Preferences/FlashForge.FlashPrint.plist"
end
