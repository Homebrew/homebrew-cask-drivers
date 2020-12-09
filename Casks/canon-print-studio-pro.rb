cask "canon-print-studio-pro" do
  version "2.2.4"
  sha256 "d7ace5f94e379b62f7345ec693510d4453c3c6a481639c91bbd7c3396de2f936"

  url "https://gdlp01.c-wss.com/gds/6/0200006106/01/mpsp-mac-#{version.dots_to_underscores}-ea10_3.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon Print Studio Pro"
  desc "Lightroom plugin for printing with Canon Pixma Pro printers"
  homepage "https://www.canon-europe.com/support/consumer_products/products/printers/inkjet/pixma_pro_series/pixma_pro-100.html?type=software&softwaredetailid=tcm:13-1953961"

  depends_on macos: ">= :catalina"

  pkg "Print Studio Pro #{version.no_dots}.pkg"

  uninstall pkgutil: "jp.co.canon.CNPSPMAIN"
end
