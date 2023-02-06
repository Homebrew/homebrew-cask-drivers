cask "logi-tune" do
  version "3.0.180"
  sha256 "1df55f7240aff2ab107ee4b35291a12c01b4be2a46cd0f938c87254d7fce4a94"

  url "https://software.vc.logitech.com/downloads/tune/LogiTuneInstaller.dmg",
      verified: "software.vc.logitech.com/downloads/tune/"
  name "Logi Tune"
  desc "Optimize your webcam, headset, and Logi Dock for video meetings"
  homepage "https://www.logitech.com/en-us/video-collaboration/software/logi-tune-software.html"

  auto_updates true
  depends_on macos: ">= :catalina"

  installer manual: "LogiTuneInstaller.app"

  uninstall delete: [
    "/Applications/LogiTune.app",
    "/Library/LaunchAgents/com.logitech.logitune.launcher.plist",
    "/Library/LaunchDaemons/com.logitech.LogiRightSight.plist",
  ]

  zap trash: [
    "/Users/Shared/logitune",
    "/Users/Shared/LogiTuneInstallerStarted.txt",
    "~/Library/Application Support/logitune",
    "~/Library/Preferences/com.logitech.logitune.plist",
    "~/Library/Saved Application State/com.logitech.logituneInstaller.savedState",
  ]
end
