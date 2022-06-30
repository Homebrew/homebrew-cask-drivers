cask "seagate-dashboard" do
  version :latest
  sha256 :no_check

  url "https://www.seagate.com/files/www-content/support-content/downloads/_shared/downloads/Seagate_Dashboard_Installer.dmg"
  name "Seagate Dashboard"
  homepage "https://www.seagate.com/support/software/dashboard/"

  pkg "Dashboard.app/Contents/PlugIns/SeagateDashboard.pkg"

  uninstall kext:      [
              "com.seagate.driver.PowSecDriverCore",
              "com.seagate.driver.PowSecLeafDriver_10_5",
              "com.seagate.driver.SeagateDriveIcons",
            ],
            launchctl: [
              "com.seagate.dashboard",
              "com.seagate.TBDecorator.plist",
            ],
            pkgutil:   [
              "com.seagate.driver.PowSecDriverCore.pkg",
              "com.seagate.seagateDashboard.*",
            ],
            quit:      "com.seagate.dashboard"

  zap trash: [
    "~/Library/Application Support/Seagate Dashboard*",
    "~/Library/Application Support/CrashReporter/Seagate Dashboard_*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.seagate.dashboard.sfl*",
    "~/Library/Caches/com.seagate.dashboard",
    "~/Library/Preferences/com.seagate.dashboard.plist",
    "/Library/Logs/DiagnosticReports/Seagate Dashboard_*",
  ]
end
