cask "audient-evo" do
  version "4.2.3"
  sha256 "5a5645eec7ca5b44dde2c1cbb0b3fbb2d8b0b9ab17362f63bd19b11336cb54da"

  url "https://d9w4fhj63j193.cloudfront.net/EVO/EVO%20Drivers/EVO%20v#{version}.dmg",
      verified: "d9w4fhj63j193.cloudfront.net/EVO/EVO%20Drivers/"
  name "Audient Evo"
  desc "Control and Loop-back Mixer"
  homepage "https://evo.audio/products/evo-4/downloads/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/EVO%20v(\d+(?:\.\d+)*(?:rc\d+)?)\.dmg}i)
  end

  app "EVO.app"

  zap trash: "~/Library/Application Support/Audient"
end
