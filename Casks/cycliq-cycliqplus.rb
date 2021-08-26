cask "cycliq-cycliqplus" do
  version "2.61"
  sha256 "0a01a44079e2b984524d453f5e987b0cdf48c648ca682a5f4c106a53172f1641"

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
