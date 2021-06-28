cask "opentx-companion" do
  version "2.3.13"
  sha256 "50c5792345bbc8bb9d63ee162e59d8744fbda97d5af749693231c29bbb00ba3e"

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
