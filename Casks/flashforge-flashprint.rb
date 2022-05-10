cask "flashforge-flashprint" do
  version "5.3.3,1c68fcfadc5c29627057053d5a5af558"
  sha256 "01908dc35bfb8b2fbf812caabac070dc0a788d99b1179ce2495996e818c07dbc"

  url "https://en.fss.flashforge.com/10000/software/#{version.csv.second}.zip"
  name "FlashPrint"
  desc "Printing software for flashforge 3d-printers"
  homepage "https://www.flashforge.com/product-detail/40"

  auto_updates true

  pkg "FlashPrint #{version.major}.pkg"

  uninstall pkgutil: "com.sz3dp.pkg.FlashPrint5"

  zap trash: "~/Library/Preferences/FlashForge.FlashPrint.plist"
end
