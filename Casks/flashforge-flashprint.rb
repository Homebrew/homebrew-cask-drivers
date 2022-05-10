cask "flashforge-flashprint" do
  version "5.3.3,1c68fcfadc5c29627057053d5a5af558"
  sha256 "38b11cd90400119bcd145ca5a9981dfea7ab8caabbb0fbd746783ab1821d8740"

  url "https://en.fss.flashforge.com/10000/software/#{version.csv.second}.zip"
  name "FlashPrint"
  desc "Printing software for flashforge 3d-printers"
  homepage "https://www.flashforge.com/product-detail/40"

  auto_updates true

  pkg "FlashPrint #{version.major}.pkg"

  uninstall pkgutil: "com.sz3dp.pkg.FlashPrint"

  zap trash: "~/Library/Preferences/FlashForge.FlashPrint.plist"
end
