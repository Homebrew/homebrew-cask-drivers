cask "flashforge-flashprint" do
  version "5.5.1"
  sha256 "134ed9e79b80e576644dc83ee812f4e4a9ecfbf0148a18a87e0f4036845c6390"

  url "http://www.ishare3d.com/3dapp/public/FlashPrint-5/FlashPrint/FlashPrint_#{version}_mac.zip",
      verified: "ishare3d.com/3dapp/public/FlashPrint-5/FlashPrint/"
  name "FlashPrint"
  desc "Printing software for flashforge 3d-printers"
  homepage "https://www.flashforge.com/product-detail/40"

  livecheck do
    url "https://www.flashforge.com/download-center/63"
    regex(/FlashPrint_v?(\d+(?:\.\d+)+)/i)
  end

  pkg "FlashPrint #{version.major}.pkg"

  uninstall pkgutil: "com.sz3dp.pkg.FlashPrint#{version.major}"

  zap trash: "~/Library/Preferences/FlashForge.FlashPrint.plist"
end
