cask "huiontablet" do
  version "15.5.6.433"
  sha256 "1d4c50a15d732d96902cb56301434ef9daaf75d2456825e86e6afac091e78902"

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
