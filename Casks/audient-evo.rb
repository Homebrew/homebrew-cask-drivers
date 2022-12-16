cask "audient-evo" do
  version "4.3.10"
  sha256 "bdc68fe142c63c03e692154ef3c9fa9b60856564e175b1d51e8fe0a33ce748ae"

  url "https://d9w4fhj63j193.cloudfront.net/EVO/EVO%20Drivers/EVO%20v#{version}.dmg",
      verified: "d9w4fhj63j193.cloudfront.net/EVO/EVO%20Drivers/"
  name "Audient Evo"
  desc "Control and Loop-back Mixer"
  homepage "https://evo.audio/products/evo-4/downloads/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/EVO%20v(\d+(?:\.\d+)*(?:rc\d+)?)\.dmg}i)
  end

  app "EVO.app"

  zap trash: "~/Library/Application Support/Audient"
end
