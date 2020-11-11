cask "canon-print-studio-pro" do
  version "2.2.4"
  sha256 "9d02496b46d5e2d706734b892041a0d6f1bebc186d533cb00674767d727b3788"

  # gdlp01.c-wss.com/gds/ was verified as official when first introduced to the cask
  url "https://gdlp01.c-wss.com/gds/6/0200006106/01/mpsp-mac-#{version.dots_to_underscores}-ea10_3.dmg"
  name "Canon Print Studio Pro"
  homepage "https://www.canon-europe.com/support/consumer_products/products/printers/inkjet/pixma_pro_series/pixma_pro-100.html?type=software&softwaredetailid=tcm:13-1953961"

  depends_on macos: ">= :catalina"

  pkg "Print Studio Pro #{version.no_dots}.pkg"

  uninstall pkgutil: "com.Canon.PrintStudioPro.*"
  
end
