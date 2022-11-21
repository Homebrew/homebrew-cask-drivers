cask "huiontablet" do
  version "15.6.3.88"
  sha256 "39a484039c16cb760ffd7f6ca93bf9ad34e4340f321eaa7e5ad7fa806971fc7b"

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
