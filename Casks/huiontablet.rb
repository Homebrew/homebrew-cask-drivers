cask "huiontablet" do
  version "15.5.3.350"
  sha256 "b3c907db58ced6077bcb70925db3c6d5eb334c903f135b1d3b805ab219a74b75"

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
