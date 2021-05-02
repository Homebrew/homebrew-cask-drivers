cask "tomtom-mydrive-connect" do
  version "4.2.11.4204"
  sha256 "72bac2932f89d347ef07b39718c722e6653739fe3d9beb7577dd70219de81357"

  url "https://cdn.sa.services.tomtom.com/static/sa/versions/MyDriveConnect_mac_#{version.dots_to_underscores}.zip"
  name "TomTom MyDrive Connect"
  desc "Update your TomTom navigation device"
  homepage "https://www.tomtom.com/mydrive-connect/"

  livecheck do
    url "https://help.tomtom.com/hc/en-us/articles/360014400719-MyDrive-Connect"
    strategy :page_match
    regex(/Version:\s*(\d+(?:\.\d+)*)\s*OS:\s*mac/i)
  end

  pkg "MyDriveConnect_mac_#{version.dots_to_underscores}.mpkg"

  uninstall quit:       [
    "com.tomtom.mytomtomsa",
    "application.com.apple.systemevents.1152921500312199658",
  ],
            login_item: "TomTomMyDriveConnectHelper",
            pkgutil:    [
              "com.tomtom.mytomtomsa.temp.pkg",
              "com.tomtom.mytomtomsa.pkg",
            ]

  zap trash: [
    "~/Library/Application Support/CrashReporter/TomTom MyDrive Connect_*.plist",
    "~/Library/Application Support/TomTom/HOME3",
    "~/Library/Logs/DiagnosticReports/TomTom MyDrive Connect_*.crash",
    "~/Library/Preferences/com.tomtom.mytomtomsa.plist",
    "~/Library/Saved Application State/com.tomtom.mytomtomsa.savedState",
  ],
      rmdir: [
        "~/Library/Application Support/TomTom",
        "~/Library/Caches/TomTom",
      ]
end
