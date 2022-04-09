cask "tomtom-mydrive-connect" do
  version "4.2.12.4441"
  sha256 "ab0989241a1c67012cc64edfc6658b10420f0e888eb3e9ff65b4b08b4435db14"

  url "https://cdn.sa.services.tomtom.com/static/sa/versions/MyDriveConnect_mac_#{version.dots_to_underscores}.zip"
  name "TomTom MyDrive Connect"
  desc "Update your TomTom navigation device"
  homepage "https://www.tomtom.com/mydrive-connect/"

  livecheck do
    url "https://help.tomtom.com/hc/en-us/articles/360014400719-MyDrive-Connect"
    regex(/Version:\s*(\d+(?:\.\d+)+)\s*OS:\s*mac/i)
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
