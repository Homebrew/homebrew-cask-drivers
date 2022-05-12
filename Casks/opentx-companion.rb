cask "opentx-companion" do
  version "2.3.15"
  sha256 "50f2b7a0bf77330604ee985fa22eac91f1eb8d1fe7229169594ab2eb8e2b5da2"

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
