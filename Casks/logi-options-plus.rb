cask "logi-options-plus" do
  version "1.29.0.6100"
  sha256 "9a0da014c573d04b94b795428409d1005ee31289192a06adf4ec487d7e643193"

  url "https://download01.logi.com/web/ftp/pub/techsupport/optionsplus/logioptionsplus_installer.zip",
      verified: "download01.logi.com/web/ftp/pub/techsupport/optionsplus/"
  name "Logitech Options+"
  desc "Software for Logitech devices"
  homepage "https://www.logitech.com/en-us/software/logi-options-plus.html"

  livecheck do
    url :url
    strategy :extract_plist do |versions|
      versions.values.map(&:version).compact.first
    end
  end

  depends_on macos: ">= :catalina"

  installer manual: "logioptionsplus_installer.app"

  uninstall launchctl: [
              "com.logi.cp-dev-mgr",
              "com.logi.optionsplus",
              "com.logi.optionsplus.agent",
              "com.logi.optionsplus.updater",
            ],
            quit:      [
              "com.logi.cp-dev-mgr",
              "com.logi.optionsplus",
              "com.logi.optionsplus.agent",
              "com.logi.optionsplus.updater",
            ],
            delete:    [
              "/Applications/logioptionsplus.app",
              "/Library/LaunchAgents/com.logi.optionsplus.plist",
              "/Library/LaunchDaemons/com.logi.optionsplus.updater.plist",
            ]

  zap trash: [
    "/Users/Shared/LogiOptionsPlus",
    "~/Library/Application Support/LogiOptionsPlus",
    "~/Library/Application Support/logioptionsplus",
    "~/Library/Preferences/com.logi.cp-dev-mgr.plist",
    "~/Library/Preferences/com.logi.optionsplus.plist",
    "~/Library/Saved Application State/com.logi.optionsplus.savedState",
  ]

  caveats do
    reboot
  end
end
