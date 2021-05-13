cask "corsair-icue" do
  version "3.38.61"
  sha256 "a51f0e7a97e19235dddc71f9253942ed2cb0269b138a859dba8abf7dd6d0c17e"

  url "https://downloads.corsair.com/Files/CUE/iCUE-#{version}-release.dmg"
  appcast "https://www.corsair.com/us/en/downloads/search?searchCategory=Cor_Products_iCue_Compatibility"
  name "Corsair iCUE"
  desc "Software for Corsair components and devices"
  homepage "https://www.corsair.com/us/en/icue"

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
