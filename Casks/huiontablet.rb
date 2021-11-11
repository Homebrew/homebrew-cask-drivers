cask "huiontablet" do
  version "15.5.6.392"
  sha256 "b95bb9137fc00546146cbc1e5b0074a4958e4969ff9173774e6076bc2e9457a4"

  url "https://driverdl.huion.com/driver/Mac/HuionTablet_MacDriver_v#{version}.dmg"
  name "Huion Tablet"
  desc "Driver for Huion Tablets"
  homepage "https://huion.com/"

  livecheck do
    url "https://huion.com/download/"
    strategy :page_match
    regex(%r{Mac/HuionTablet_MacDriver_v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "HuionTablet.app"

  zap trash: "~/Library/Saved Application State/com.huion.HuionTablet.savedState"
end
