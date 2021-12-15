cask "cycliq-cycliqplus" do
  version "2.64"
  sha256 "e8d06df955b148e13b2b38d2e0e70af1f77d4ec32e1645f582651fccb5aa03c6"

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
