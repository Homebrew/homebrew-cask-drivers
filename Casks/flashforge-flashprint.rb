cask "flashforge-flashprint" do
  version "5.6.0"
  sha256 "c9896f283249bff1dadc2cae3af26afe61e0336a8a35e0783e9bff6c96fa160d"

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
