cask "xppen-pentablet" do
  version "3.1.3_210629"
  sha256 :no_check

  url "https://www.xp-pen.com/download/file/id/1968"
  name "XP-Pen PenTablet"
  desc "Driver and configuration app for XP-Pen graphic tablets"
  homepage "https://www.xp-pen.com/"

  livecheck do
    url :url
    strategy :header_match
    regex(/XP[._-]PENMac[._-]v?(\d+(?:\.\d+)+[._-]\d+)\.zip/i)
  end

  container nested: "XP-PENMac_#{version}/XP-PENMac_#{version}.dmg"

  app "XP-PenPenTabletPro/PenTablet.app"

  zap trash: [
    "/Library/Application Support/PenDriver",
    "~/Library/Preferences/com.ugee.uninstallpen.plist",
    "~/Library/Saved Application State/com.ugee.PenTablet2.0.savedState",
    "~/.PenTablet",
  ]
end
