cask "bose-updater" do
  version "7.0.27.4971"
  sha256 "c8784ddd0f711ba86137cc25786c65935f69c1d6d5f8f6fdf1261ad59d7263c0"

  url "https://downloads.bose.com/ced/boseupdater/mac/BoseUpdater_#{version}.dmg"
  appcast "https://btu.bose.com/data/MUV.xml"
  name "Bose Device Updater"
  desc "Software updates for Bose products"
  homepage "https://btu.bose.com/"

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
