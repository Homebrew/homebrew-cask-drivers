cask "obsbot-me-tool" do
  version "1.0.0.12"
  sha256 "77dbc8ba54b64112713e72155d517f3ac54cac7dd1515a90b0f13a58ebb01e3b"

  url "https://obsbot-static-resource.oss-cn-hongkong.aliyuncs.com/obsbot_me/tool/Obsbot_metool_pc_OA_E_MacOS_#{version}_release.dmg",
      verified: "obsbot-static-resource.oss-cn-hongkong.aliyuncs.com/obsbot_me/tool/"
  name "OBSBOT Me Tool"
  desc "Configuration and firmware update utility for OBSBOT Me"
  homepage "https://www.obsbot.com/download?tab=obsbot-me"

  livecheck do
    url :homepage
    regex(/Obsbot[._-]metool[._-]pc[._-]OA[._-]E[._-]MacOS[._-](\d+(?:\.\d+)+)[._-]release\.dmg/i)
  end

  depends_on macos: [
    :high_sierra,
    :mojave,
    :catalina,
    :big_sur,
  ]

  app "OBSBOT Me Tool.app"
end
