cask "obsbot-tinycam" do
  version "1.3.6.12"
  sha256 "fb0d3245a77e11ebe1d0a9db2c879a35d1eb9a7844313420681c029bd1f2e731"

  url "https://obsbot-static-resource.oss-cn-hongkong.aliyuncs.com/download/obsbot-tiny-4k/software/Obsbot_tiny_pc_OA_E_MacOS_#{version}_release.dmg",
      verified: "obsbot-static-resource.oss-cn-hongkong.aliyuncs.com/download/obsbot-tiny-4k/software/"
  name "OBSBOT TinyCam"
  desc "Configuration and firmware update utility for OBSBOT Tiny and Tiny 4K webcams"
  homepage "https://www.obsbot.com/download"

  livecheck do
    url :homepage
    regex(/Obsbot[._-]tiny[._-]pc[._-]OA[._-]E[._-]MacOS[._-](\d+(?:\.\d+)+)[._-]release\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "OBSBOT TinyCam.app"

  zap trash: [
    "~/Library/Preferences/remo-ai.OBSBOT-TinyCam.plist",
    "~/Library/Saved Application State/remo-ai.OBSBOT-TinyCam.savedState",
  ]
end
