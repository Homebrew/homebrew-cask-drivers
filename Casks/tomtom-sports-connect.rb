cask "tomtom-sports-connect" do
  version :latest
  sha256 :no_check

  # sports.tomtom-static.com/ was verified as official when first introduced to the cask
  url "https://sports.tomtom-static.com/downloads/desktop/mysportsconnect/latest/TomTomSportsConnectInstaller.pkg"
  name "TomTom MySports Connect"
  homepage "https://www.tomtom.com/mysports/getstarted"

  pkg "TomTomSportsConnectInstaller.pkg"

  uninstall quit:       "com.tomtom.mysportsconnect",
            login_item: "TomTom Sports Connect Launcher",
            pkgutil:    [
              "com.tomtom.tomtomfa.pkg",
              "com.tomtom.tomtomfa.temp.pkg",
            ]

  zap trash: [
    "~/Library/Application Support/TomTom",
    "~/Library/Caches/TomTom",
    "~/Library/Saved Application State/com.tomtom.mysportsconnect.savedState",
  ]
end
