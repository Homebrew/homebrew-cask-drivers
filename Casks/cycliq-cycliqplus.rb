cask "cycliq-cycliqplus" do
  version "2.58"
  sha256 "23f1c90ccd83ff99b3269d709781e37b40778e6c87526dbb48ed4a86a875726f"

  url "https://cycliq.com/files/software/CycliqPlus-#{version}.dmg"
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
