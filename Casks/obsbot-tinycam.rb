cask "obsbot-tinycam" do
  version "1.3.8.15"
  sha256 "132955ccd96e82d198df25fcfcb39bcd0c8d97a14d7c8dcb3fd9023b7c250bd1"

  url "https://obsbot-static-resource.oss-cn-hongkong.aliyuncs.com/download/obsbot-tiny-4k/software/Obsbot_tiny_pc_OA_E_MacOS_#{version}_release.dmg",
      verified: "obsbot-static-resource.oss-cn-hongkong.aliyuncs.com/download/obsbot-tiny-4k/software/"
  name "OBSBOT TinyCam"
  desc "Configuration and firmware update utility for OBSBOT Tiny and Tiny 4K webcams"
  homepage "https://www.obsbot.com/download"

  livecheck do
    url :homepage
    regex(/Obsbot[._-]tiny[._-]pc[._-]OA[._-]E[._-]MacOS[._-](\d+(?:\.\d+)+)[._-]release\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "OBSBOT TinyCam.app"

  zap trash: [
    "~/Library/Preferences/remo-ai.OBSBOT-TinyCam.plist",
    "~/Library/Saved Application State/remo-ai.OBSBOT-TinyCam.savedState",
  ]
end
