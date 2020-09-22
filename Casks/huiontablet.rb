cask "huiontablet" do
  version "14.4.5.200730"
  sha256 "0fb410e205849dc277cef76c63eacc8cacb33faf3fec96a66247ce7a913a504a"

  url "https://driver.huion.com/driver/Mac/HuionTablet_MacDriver_v#{version.major_minor_patch}.zip"
  name "Huion Tablet"
  desc "Driver for Huion Tablets"
  homepage "https://huion.com/"

  container nested: "HuionTablet_MacDriver_v#{version.major_minor_patch}.dmg"

  app "HuionTablet.app"

  zap trash: [
    "~/Library/Saved Application State/com.huion.HuionTablet.savedState",
  ]
end
