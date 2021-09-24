cask "cycliq-cycliqplus" do
  version "2.63"
  sha256 "6ba5c2230b09013ab54f098a6050ba41b242c4a2fe65ac4ab48c0193007d00ff"

  url "https://cycliq.com/files/software/downloads/CycliqPlus-#{version}.dmg"
  name "CycliqPlus"
  desc "Footage and bike camera settings editor"
  homepage "https://cycliq.com/"

  livecheck do
    url "https://cycliq.com/software/cycliqplus/macos/"
    strategy :header_match
  end

  app "CycliqPlus.app"

  zap trash: [
    "~/Library/Caches/com.cycliq.mac",
    "~/Library/WebKit/com.cycliq.mac",
  ]
end
