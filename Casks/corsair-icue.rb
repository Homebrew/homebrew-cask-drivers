cask "corsair-icue" do
  version "4.15.153"
  sha256 "40f2f53235cecdd4f5c537e4742a6a2c1675a9f32f8217216adc94d08d9dae99"

  url "https://downloads.corsair.com/Files/CUE/iCUE-#{version}-release.dmg"
  name "Corsair iCUE"
  desc "Software for Corsair components and devices"
  homepage "https://www.corsair.com/us/en/icue"

  livecheck do
    skip "Download page uses Imperva/Incapsula"
  end

  depends_on macos: ">= :high_sierra"

  pkg "iCUE.pkg"

  uninstall launchctl: [
    "com.corsair.AudioConfigService.System",
    "com.corsair.cue.#{version.major}.launchHelper",
  ],
            quit:      [
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
