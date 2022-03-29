cask "logi-options-plus" do
  version :latest
  sha256 :no_check

  url "https://download01.logi.com/web/ftp/pub/techsupport/optionsplus/logioptionsplus_installer.zip",
      verified: "download01.logi.com/web/ftp/pub/techsupport/optionsplus/"
  name "Logitech Options+"
  desc "Software for Logitech devices"
  homepage "https://www.logitech.com/en-us/software/logi-options-plus.html"

  depends_on macos: ">= :catalina"

  installer manual: "logioptionsplus_installer.app"

  uninstall launchctl: [
    "com.logi.cp-dev-mgr",
    "com.logi.optionsplus",
    "com.logi.optionsplus.updater",
    "com.logi.optionsplus.agent",
  ],
            quit:      [
              "com.logi.cp-dev-mgr",
              "com.logi.optionsplus",
              "com.logi.optionsplus.updater",
              "com.logi.optionsplus.agent",
              "com.Logitech.Unifying Software.pkg",
            ],
            pkgutil:   [
              "com.Logitech.Updater.pkg",
              "com.Logitech.Unifying Software.pkg",
            ],
            delete:    [
              "/Applications/logioptionsplus.app",
              "/Library/Application Support/Logitech.localized",
              "/Library/LaunchDaemons/com.logi.optionsplus.updater.plist",
              "/Library/LaunchAgents/com.logi.optionsplus.plist",
              "/private/var/folders/pm/x750ngd17hgc1wc7_09wjgdh0000gn/C/com.logi.optionsplus.helper",
              "/private/var/folders/pm/x750ngd17hgc1wc7_09wjgdh0000gn/T/com.logi.optionsplus.agent.logs",
              "/private/var/folders/pm/x750ngd17hgc1wc7_09wjgdh0000gn/T/com.logi.optionsplus.installer.logs",
              "/private/var/folders/pm/x750ngd17hgc1wc7_09wjgdh0000gn/T/com.logi.optionsplus.updater.logs",
              "/private/var/folders/pm/x750ngd17hgc1wc7_09wjgdh0000gn/T/.com.logi.optionsplus.6N7HiI",
            ]

  zap trash: [
    "~/Library/Application Support/Logitech",
    "~/Library/Application Support/LogiOptionsPlus",
    "~/Library/Preferences/com.logi.optionsplus.plist",
    "~/Library/Preferences/com.logi.cp-dev-mgr.plist",
    "~/Library/Preferences/com.Logitech.Updater.plist",
    "~/Library/Application Support/logioptionsplus",
    "~/Library/Saved Application State/com.logi.optionsplus.savedState",
    "/Users/Shared/LogiOptionsPlus",
  ]

  caveats do
    reboot
  end
end
