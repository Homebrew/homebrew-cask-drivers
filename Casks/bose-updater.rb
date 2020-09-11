cask "bose-updater" do
  version "7.0.4.4795"
  sha256 "66d8b9a96dbbc8a6dd4d256c679df1f1af4f58b32ff025ad8248c352fdbb6c0b"

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
