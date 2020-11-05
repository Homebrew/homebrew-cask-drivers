cask "logitech-options" do
  if MacOS.version <= :high_sierra
    version "8.30.293"
    sha256 "db5f2cd94960223bdf74f0db6fc009f82f80928fe2ce849202754bbdb720eb87"
  else
    version "8.34.91"
    sha256 "632ae588581d2551d7dc6ba99e111c1d68c069bc2c512aa7762ee6a9d53173ea"
  end

  url "https://www.logitech.com/pub/techsupport/options/Options_#{version}.zip"
  name "Logitech Options"
  desc "Software for Logitech devices"
  homepage "https://support.logitech.com/software/options"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "LogiMgr Installer #{version}.app/Contents/Resources/LogiMgr.mpkg"

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
