cask "toneprint" do
  version "4.5.10"
  sha256 "308ad27aa7d2de670a84c28e4f997503c2eed2f2715fc5a3c85b30f11eccd30e"

  url "https://mediadl.musictribe.com/download/software/tcelectronic/TonePrintEditor/TonePrint_#{version}.dmg",
      verified: "mediadl.musictribe.com/download/software/tcelectronic/TonePrintEditor/"
  name "TonePrint"
  desc "Alter the character of your TonePrint pedal"
  homepage "https://www.tcelectronic.com/tonePrints.html"

  livecheck do
    url "https://www.tcelectronic.com/.rest/musictribe/v1/downloadcenter/solr-dldatatable?brandName=tcelectronic&modelCode=P0CLC&iDisplayStart=0&iDisplayLength=15"
    regex(/TonePrint[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Toneprint.app"

  zap trash: [
    "~/Library/Application Support/TonePrint",
    "~/Library/Caches/com.tcelectronic.toneprint",
  ]
end
