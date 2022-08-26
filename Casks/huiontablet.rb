cask "huiontablet" do
  version "15.6.2.50"
  sha256 "f381145306a0343c1c447b2123680390b104a7854a875d9d86b19cdedea753c8"

  url "https://driverdl.huion.com/driver/Mac/HuionTablet_MacDriver_v#{version}.dmg"
  name "Huion Tablet"
  desc "Driver for Huion Tablets"
  homepage "https://huion.com/"

  livecheck do
    url "https://huion.com/download/"
    regex(%r{Mac/HuionTablet_MacDriver_v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "HuionTablet.app"

  zap trash: "~/Library/Saved Application State/com.huion.HuionTablet.savedState"
end
