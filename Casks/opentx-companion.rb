cask "opentx-companion" do
  version "2.3.14"
  sha256 "34e6c54dc8d91bb2d5a4c6da1f732372f173f02cd63401b8a601e88850c4a27d"

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
