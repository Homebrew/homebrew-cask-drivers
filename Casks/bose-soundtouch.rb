cask "bose-soundtouch" do
  version "25.0.4-3095-b09ae53,st2_2020_b103e58e"
  sha256 "f7af2464d5ae9312df7573bee666fbc0807f790d6ba7476ba045ab824eaec785"

  url "https://downloads.bose.com/ced/soundtouch/#{version.after_comma}/SoundTouch-app-installer-#{version.before_comma}.dmg"
  appcast "https://downloads.bose.com/ced/soundtouch/#{version.after_comma}/index.xml"
  name "Bose Soundtouch Controller App"
  homepage "https://downloads.bose.com/ced/soundtouch/soundtouch_controller_app/index.html"

  auto_updates true

  installer script: {
    executable: "SoundTouch-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/SoundTouch/uninstall.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  },
            quit:   "com.Bose.SoundTouch"

  zap trash: [
    "~/Library/Application Support/SoundTouch",
    "~/Library/Caches/SoundTouch",
    "~/Library/Saved Application State/com.Bose.SoundTouch application.savedState",
    "~/Library/Saved Application State/com.Bose.SoundTouch.savedState",
  ]
end
