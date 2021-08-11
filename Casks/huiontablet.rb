cask "huiontablet" do
  version "15.4.8.172"
  sha256 "e0a1f93ae7fced023304005c34962757f073a4979ac8735e85ca3aade3afaf5f"

  url "https://driverdl.huion.com/driver/Mac/HuionTablet_MacDriver_v#{version}.dmg"
  name "Huion Tablet"
  desc "Driver for Huion Tablets"
  homepage "https://huion.com/"

  livecheck do
    url "https://huion.com/download/"
    strategy :page_match
    regex(%r{Mac/HuionTablet_MacDriver_v?(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "HuionTablet.app"

  zap trash: "~/Library/Saved Application State/com.huion.HuionTablet.savedState"
end
