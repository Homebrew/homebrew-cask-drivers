cask "audient-evo" do
  version "4.2.1"
  sha256 "ef6e955ed582437a5d4b08fe6e103dd0c3162c9802571c9f16b0fa764d766793"

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
