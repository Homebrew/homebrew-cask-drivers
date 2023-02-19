cask "tomtom-sports-connect" do
  version "3.3.9"
  sha256 :no_check

  url "https://sports.tomtom-static.com/downloads/desktop/mysportsconnect/latest/TomTomSportsConnectInstaller.pkg",
      verified: "sports.tomtom-static.com/"
  name "TomTom MySports Connect"
  homepage "https://www.tomtom.com/mysports/getstarted"

  livecheck do
    url :url
    strategy :extract_plist
  end

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
