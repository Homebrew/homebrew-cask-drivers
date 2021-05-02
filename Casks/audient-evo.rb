cask "audient-evo" do
  version "4.1.12"
  sha256 "34ddb64e0d3c30efc884a96bef7e468a07af76bb3abd151645290272b7345e05"

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
