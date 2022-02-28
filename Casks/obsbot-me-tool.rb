cask "obsbot-me-tool" do
  version "1.0.2.1"
  sha256 "8afb295a65cfd82ca4023238e3cf4d0e7ae14799c3c84afd2f8a9fafcbaa7257"

  url "https://obsbot-static-resource.oss-cn-hongkong.aliyuncs.com/download/obsbot-me/metool/Obsbot_metool_pc_OA_E_MacOS_#{version}_release.dmg",
      verified: "obsbot-static-resource.oss-cn-hongkong.aliyuncs.com/download/obsbot-me/metool/"
  name "OBSBOT Me Tool"
  desc "Configuration and firmware update utility for OBSBOT Me"
  homepage "https://www.obsbot.com/download?tab=obsbot-me"

  livecheck do
    url :homepage
    regex(/Obsbot[._-]metool[._-]pc[._-]OA[._-]E[._-]MacOS[._-](\d+(?:\.\d+)+)[._-]release\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "OBSBOT Me Tool.app"
end
