cask "xppen-pentablet" do
  version "3.2.3_211203"
  sha256 :no_check

  url "https://www.xp-pen.com/download/file/id/1968"
  name "XP-Pen PenTablet"
  desc "Driver and configuration app for XP-Pen graphic tablets"
  homepage "https://www.xp-pen.com/"

  livecheck do
    url :url
    regex(/XP[._-]PENMac[._-]v?(\d+(?:\.\d+)+[._-]\d+)\.zip/i)
    strategy :header_match
  end

  container nested: "XP-PENMac_#{version}/XP-PENMac_#{version}.dmg"

  suite "XP-PenPenTabletPro"

  zap trash: [
    "/Library/Application Support/PenDriver",
    "~/.PenTablet",
    "~/Library/Preferences/com.ugee.uninstallpen.plist",
    "~/Library/Saved Application State/com.ugee.PenTablet2.0.savedState",
  ]
end
