cask "corsair-icue" do
  version "4.25.155"
  sha256 "c1ef319a8e25286c5f2f985df6050b57a179a3abee8102e0fb04c8f9c8ff895a"

  url "https://downloads.corsair.com/Files/CUE/iCUE-#{version}-release.dmg"
  name "Corsair iCUE"
  desc "Software for Corsair components and devices"
  homepage "https://www.corsair.com/us/en/icue-mac"

  livecheck do
    url "https://www3.corsair.com/software/CUE_V#{version.major}/updates_mac.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "iCUE.pkg"

  uninstall launchctl: [
              "com.corsair.AudioConfigService.System",
              "com.corsair.cue.#{version.major}.launchHelper",
            ],
            quit:      [
              "com.corsair.cue",
              "com.corsair.cue.*",
              "org.qt-project.*",
            ],
            script:    {
              executable: "/usr/bin/osascript",
              args:       ["#{appdir}/Corsair/iCUEUninstaller.app/Contents/Scripts/uninstall.scpt"],
              sudo:       true,
            },
            pkgutil:   [
              "com.corsair.CorsairAudio",
              "com.corsair.cue.*",
            ],
            delete:    [
              "/Library/Audio/Plug-Ins/HAL/CorsairAudio.plugin",
              "/Library/LaunchAgents/iCUELaunchAgent.plist",
            ],
            rmdir:     "/Applications/Corsair"

  zap trash: [
    "~/.config/com.corsair",
    "~/Library/Application Support/Corsair",
    "~/Library/Caches/Corsair",
    "~/Library/Caches/iCUEUninstaller",
    "~/Library/Preferences/com.corsair.cue.#{version.major}.plist",
    "~/Library/Saved Application State/com.corsair.cue.#{version.major}.cue_unistaller.savedState",
    "~/Library/Saved Application State/com.corsair.cue.#{version.major}.savedState",
  ]
end
