cask "bose-soundtouch" do
  version "26.0.0-3251-ff6a93d,st3_2020_a3b99494"
  sha256 "be74aeaa1e73bd6b07d92ceb5fcff5b58c4023eb7ccdb034fea842080554aa4e"

  url "https://downloads.bose.com/ced/soundtouch/#{version.after_comma}/SoundTouch-app-installer-#{version.before_comma}.dmg"
  appcast "https://downloads.bose.com/ced/soundtouch/#{version.after_comma}/index.xml"
  name "Bose Soundtouch Controller App"
  desc "Control Bose SoundTouch systems from your computer"
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
            signal: ["TERM", "com.Bose.SoundTouch"],
            quit:   "io.qt.SoundTouchHelper"

  zap trash: [
    "~/Library/Application Support/SoundTouch",
    "~/Library/Caches/SoundTouch",
    "~/Library/Saved Application State/com.Bose.SoundTouch application.savedState",
    "~/Library/Saved Application State/com.Bose.SoundTouch.savedState",
  ]
end
