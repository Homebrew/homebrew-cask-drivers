cask "huiontablet" do
  version "15.4.1.143"
  sha256 "bc5acb56578b0e7b9a87e90e37f44004b3b2a4b21b11b042015161222504cdeb"

  url "https://driverdl.huion.com/driver/Mac/HuionTablet_MacDriver_v#{version}.dmg"
  name "Huion Tablet"
  desc "Driver for Huion Tablets"
  homepage "https://huion.com/"

  livecheck do
    url "https://huion.com/download/"
    strategy :page_match
    regex(/HuionTablet_MacDriver_v?(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "HuionTablet.app"

  zap trash: "~/Library/Saved Application State/com.huion.HuionTablet.savedState"
end
