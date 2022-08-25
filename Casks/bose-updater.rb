cask "bose-updater" do
  version "7.1.6.5134"
  sha256 "132b059a753d981f1a45b95826815dbb6a5ff686e49b86e9a0a81fd37be8fb0c"

  url "https://downloads.bose.com/ced/boseupdater/mac/BoseUpdater_#{version}.dmg"
  name "Bose Device Updater"
  desc "Software updates for Bose products"
  homepage "https://btu.bose.com/"

  livecheck do
    url "https://btu.bose.com/data/MUV.xml"
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
