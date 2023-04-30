cask "cycliq-cycliqplus" do
  version "2.80"
  sha256 "e4eebad6408ce0191af23b8c5796f0f4ab2a3a676ac4ebeaad06d140e2326a30"

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
