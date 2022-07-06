cask "audient-evo" do
  version "4.3.4"
  sha256 "b369876e29f83771497f7e23800e43cfe59e2efd6437d998cac51447ace29f93"

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
