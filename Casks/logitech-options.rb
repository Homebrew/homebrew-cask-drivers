cask "logitech-options" do
  if MacOS.version <= :sierra
    version "7.14.77"
    sha256 "e4df55642e04139fc93d955e949bf736196a404ed067d87f8de7eb9ac9117ece"
  elsif MacOS.version <= :high_sierra
    version "8.30.293"
    sha256 "db5f2cd94960223bdf74f0db6fc009f82f80928fe2ce849202754bbdb720eb87"
  else
    version "8.36.76"
    sha256 "e19be5051c782245c7e6bde87586a0819aea14d24c7ff3981f48b7ca45fa6c90"
  end

  url "https://www.logitech.com/pub/techsupport/options/Options_#{version}.zip"
  name "Logitech Options"
  desc "Software for Logitech devices"
  homepage "https://support.logitech.com/software/options"

  auto_updates true
  depends_on macos: ">= :sierra"

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
