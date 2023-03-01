cask "obsbot-webcam" do
  version "2.0.2.2"
  sha256 "6e1dd286eb44e5a3be8fd3583a55b7f43d0fec6cdc754a45478911b9eae92106"

  url "https://obsbot-static-resource.oss-accelerate.aliyuncs.com/download/obsbot-webcam/Obsbot_WebCam_OA_E_MacOS_#{version}_release.dmg",
      verified: "obsbot-static-resource.oss-accelerate.aliyuncs.com/download/obsbot-webcam/"
  name "OBSBOT WebCam"
  desc "Configuration and firmware update utility for OBSBOT Tiny and Meet series"
  homepage "https://www.obsbot.com/download"

  livecheck do
    url "https://www.obsbot.com/download/obsbot-tiny-series"
    regex(/Obsbot[._-]WebCam[._-]OA[._-]E[._-]MacOS[._-](\d+(?:\.\d+)+)[._-]release\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "OBSBOT_WebCam.app"

  zap trash: [
    "~/Library/Application Support/OBSBOT_WebCam",
    "~/Library/Preferences/com.obsbot.OBSBOT_WebCam.plist",
    "~/Library/Saved Application State/com.obsbot.OBSBOT_WebCam.savedState",
  ]
end
