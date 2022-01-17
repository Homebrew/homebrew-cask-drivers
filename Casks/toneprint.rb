cask "toneprint" do
  version "4.5.5"
  sha256 "c85bb2875578eab40b9e091ebe07e2a85e2055af047ccf883e2aae2e0df7f6d5"

  url "https://mediadl.musictribe.com/download/software/tcelectronic/TonePrintEditor/TonePrint_#{version}_MacOS.zip",
      verified: "mediadl.musictribe.com/download/software/tcelectronic/TonePrintEditor/"
  name "TonePrint"
  desc "Alter the character of your TonePrint pedal"
  homepage "https://www.tcelectronic.com/tonePrints.html"

  livecheck do
    url "https://www.tcelectronic.com/.rest/musictribe/v1/downloadcenter/solr-dldatatable?brandName=tcelectronic&modelCode=P0CLC&iDisplayStart=0&iDisplayLength=15"
    regex(/TonePrint[._-]v?(\d+(?:\.\d+)+)[._-]MacOS\.zip/i)
  end

  app "Toneprint.app"

  zap trash: [
    "~/Library/Application Support/TonePrint",
    "~/Library/Caches/com.tcelectronic.toneprint",
  ]
end
