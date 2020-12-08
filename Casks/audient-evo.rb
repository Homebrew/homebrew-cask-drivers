cask "audient-evo" do
  version "4.1.6rc3"
  sha256 "fff915e097ee464ac945794bb762a4a38f72caff6627d7eab2e500b24c029010"

  url "https://d9w4fhj63j193.cloudfront.net/EVO/EVO%208/Drivers/EVO%20v#{version}.dmg",
    verified: "d9w4fhj63j193.cloudfront.net/EVO/EVO%208/Drivers/"
  appcast "https://evo.audio/products/evo-4/downloads/"
  name "Audient Evo"
  desc "Control and Loop-back Mixer"
  homepage "https://evo.audio/products/evo-4/downloads/"

  app "EVO.app"

  zap trash: "~/Library/Application Support/Audient"
end
