cask "flashforge-flashprint" do
  version "4.3.3,9677f11c628259ba8bf93e672c9a95dc"
  sha256 "7ee27e0f9ce408f79f708b87e1c22ed15d61140c438e244f5ae220c37aba5c73"

  url "https://en.fss.flashforge.com/10000/software/#{version.after_comma}.zip"
  name "FlashPrint"
  homepage "https://www.flashforge.com/product-detail/40"

  auto_updates true

  pkg "FlashPrint.pkg"

  uninstall pkgutil: "com.sz3dp.pkg.FlashPrint"

  zap trash: "~/Library/Preferences/FlashForge.FlashPrint.plist"
end
