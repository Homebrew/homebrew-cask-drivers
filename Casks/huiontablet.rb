cask "huiontablet" do
  version "14.5.0.201120"
  sha256 "921b74ad4da70239d4d04d34dc34cf7aded77e0f8f62b22aa32e957dc582c5f9"

  url "https://driver.huion.com/driver/Mac/HuionTablet_MacDriver_v#{version}.zip"
  name "Huion Tablet"
  desc "Driver for Huion Tablets"
  homepage "https://huion.com/"

  container nested: "HuionTablet_MacDriver_v#{version}.dmg"

  app "HuionTablet.app"

  zap trash: "~/Library/Saved Application State/com.huion.HuionTablet.savedState"
end
