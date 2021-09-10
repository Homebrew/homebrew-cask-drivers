cask "cycliq-cycliqplus" do
  version "2.62"
  sha256 "d9c80bceef3153564802749e660d5fcca7a4e6de5c8186a418822d80c9986115"

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
