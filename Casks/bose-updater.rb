cask "bose-updater" do
  version "7.0.26.4970"
  sha256 "7ae8c17e0fa523637e9a7e2b1090de68cac9da55840f4c61f871fc35cb171019"

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
