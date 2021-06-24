cask "bose-updater" do
  version "7.0.31.4997"
  sha256 "1687b9d5dfb98961e1124dd92cfeab577d8131613c5690aca67e8cd335129273"

  url "https://downloads.bose.com/ced/boseupdater/mac/BoseUpdater_#{version}.dmg"
  name "Bose Device Updater"
  desc "Software updates for Bose products"
  homepage "https://btu.bose.com/"

  livecheck do
    url "https://btu.bose.com/data/MUV.xml"
    strategy :page_match
    regex(/ROOT\sMUV="(\d+(?:.\d+)*)"/i)
  end

  app "Bose Updater.app"

  uninstall quit: [
    "com.bose.BoseUpdater",
    "org.qt-project.Qt.*",
  ]

  zap trash: "~/Library/Preferences/com.bose.Bose Updater.plist"

  caveats do
    license "https://btu.bose.com/#section=install"
  end
end
