cask "bose-updater" do
  version "7.1.4.5023"
  sha256 "7e096315d28e9a6e00652ad355bce76b6a7370b5c8340fc08028218e7d2847cd"

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
