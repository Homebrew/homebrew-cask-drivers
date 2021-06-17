cask "opentx-companion" do
  version "2.3.12"
  sha256 "9a260ec2cb8e3a95150bb11fea7a80be172418cf56b23075bcb4ea92d8a9b96b"

  url "https://downloads.open-tx.org/#{version.major_minor}/release/companion/macosx/opentx-companion-#{version}.dmg"
  name "OpenTX Companion"
  desc "Utility for RC radio transmitters running on OpenTX firmware"
  homepage "https://www.open-tx.org/"

  livecheck do
    url "https://www.open-tx.org/downloads"
    regex(%r{href=.*?/opentx[._-]v?(\d+(?:\.\d+)+)}i)
  end

  app "OpenTX Companion #{version.major_minor}.app"

  zap trash: [
    "~/Library/Preferences/org.opentx.companion.plist",
    "~/Library/Preferences/com.opentx.Companion #{version.major_minor}.plist",
    "~/Library/Saved Application State/org.opentx.companion.savedState",
  ]
end
