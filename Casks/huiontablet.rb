cask "huiontablet" do
  version "14.6.0.210128"
  sha256 "6f99a9640e8853d9d46f91ec134cc2aee65fc4d4fff340b3310793f606dfef56"

  url "https://driverdl.huion.com/driver/Mac/HuionTablet_MacDriver_v#{version}.zip"
  name "Huion Tablet"
  desc "Driver for Huion Tablets"
  homepage "https://huion.com/"

  container nested: "HuionTablet_MacDriver_v#{version}.dmg"

  app "HuionTablet.app"

  zap trash: "~/Library/Saved Application State/com.huion.HuionTablet.savedState"
end
