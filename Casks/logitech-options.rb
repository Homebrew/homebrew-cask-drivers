cask "logitech-options" do
  if MacOS.version <= :sierra
    version "7.14.77"
    sha256 "e4df55642e04139fc93d955e949bf736196a404ed067d87f8de7eb9ac9117ece"
  elsif MacOS.version <= :high_sierra
    version "8.30.293"
    sha256 "db5f2cd94960223bdf74f0db6fc009f82f80928fe2ce849202754bbdb720eb87"
  else
    version "8.54.147"
    sha256 "7b7a8d7a498d868c90b4ffe7dfc50a7a39c25e1f61350702e87d4c771b3d6459"
  end

  url "https://www.logitech.com/pub/techsupport/options/Options_#{version}.zip"
  name "Logitech Options"
  desc "Software for Logitech devices"
  homepage "https://support.logitech.com/software/options"

  livecheck do
    url "https://support.logi.com/api/v2/help_center/en-us/articles.json?label_names=webcontent=productdownload,websoftware=ec86eb2b-8e0b-11e9-a62b-a944e73f7596"
    regex(%r{/Options[._-]?v?(\d+(?:\.\d+)+)\.zip}i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  if MacOS.version <= :high_sierra
    pkg "LogiMgr Installer #{version}.app/Contents/Resources/LogiMgr.mpkg"
  else
    pkg "LogiMgr Installer #{version}.app/Contents/Resources/LogiMgr.pkg"
  end

  uninstall launchctl: "com.logitech.manager.daemon",
            quit:      [
              "com.logitech.Logi-Options",
              "com.logitech.manager.daemon",
              "com.logitech.manager.uninstaller",
            ],
            script:    {
              executable: "/Applications/Utilities/LogiMgr Uninstaller.app/Contents/Resources/Uninstaller",
            },
            pkgutil:   [
              "com.logitech.manager.pkg",
              "com.Logitech.signedKext.pkg",
            ],
            delete:    "/Library/Application Support/Logitech.localized"

  zap trash: [
    "~/Library/Application Support/Logitech/Logitech Options",
    "~/Library/Application Support/Logitech/Options",
    "~/Library/Caches/com.logitech.Logi-Options",
    "~/Library/Preferences/com.logitech.Logi-Options.plist",
    "~/Library/Preferences/com.logitech.manager.daemon.plist",
    "~/Library/Preferences/com.logitech.manager.setting.ffff.plist",
    "~/Library/Saved Application State/com.logitech.manager.uninstaller.savedState",
  ],
      rmdir: "~/Library/Application Support/Logitech"

  caveats do
    reboot
  end
end
