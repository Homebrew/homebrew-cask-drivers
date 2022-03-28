cask "logi-options-plus" do
  version "0.91.3227"
  sha256 :no_check

  url "https://download01.logi.com/web/ftp/pub/techsupport/optionsplus/logioptionsplus_installer.zip",
      verified: "download01.logi.com/web/ftp/pub/techsupport/optionsplus/"
  name "Logitech Options+"
  desc "Software for Logitech devices"
  homepage "https://www.logitech.com/en-us/software/logi-options-plus.html"

  auto_updates true
  depends_on macos: ">= :catalina"

  installer script: "logioptionsplus_installer.app/Contents/MacOS/logioptionsplus_installer"

  uninstall launchctl: [
    "com.logi.optionsplus",
    "com.logi.optionsplus.updater",
  ],
            quit:      [
              "com.logi.optionsplus",
              "com.logi.optionsplus.updater",
              "com.logi.optionsplus.agent",
            ],
            delete:    "/Library/Application Support/Logitech.localized"

  zap trash: [
    "~/Library/Preferences/com.logi.optionsplus.plist",
    "~/Library/Application Support/logioptionsplus",
    "~/Library/Saved Application State/com.logi.optionsplus.savedState",
    "/private/var/folders/pm/x750ngd17hgc1wc7_09wjgdh0000gn/C/com.logi.optionsplus.helper",
    "/private/var/folders/pm/x750ngd17hgc1wc7_09wjgdh0000gn/T/com.logi.optionsplus.agent.logs",
    "/Library/Application Support/Logitech/LogiOptionsPlus",
    "/Library/Application Support/Logitech/Logitch Options",
    "/Library/LaunchAgents/com.logi.optionsplus.plist",
    "/Library/LaunchDaemons/com.logi.optionsplus.updater.plist",
  ],
      rmdir: "~/Library/Application Support/Logitech"

  caveats do
    reboot
  end
end
