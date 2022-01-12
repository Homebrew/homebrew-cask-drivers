cask "bose-soundtouch" do
  version "27.0.0-3377-1037583,mr4_c4ab85bd"
  sha256 "b84ee3bbe3350b14873daa003703b745ab24fc0af97615c74a20c6b3e5d87a57"

  url "https://downloads.bose.com/ced/soundtouch/#{version.csv.second}/SoundTouch-app-installer-#{version.csv.first}.dmg"
  name "Bose Soundtouch Controller App"
  desc "Control Bose SoundTouch systems from your computer"
  homepage "https://downloads.bose.com/ced/soundtouch/soundtouch_controller_app/index.html"

  livecheck do
    url :homepage
    regex(%r{href=.*?/ced/soundtouch/([^/]+)/SoundTouch-app-installer[._-](\d+(?:\.\d+)+(?:-[a-z\d]+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  auto_updates true

  installer script: {
    executable: "SoundTouch-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script:    {
    executable: "/Applications/SoundTouch/uninstall.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  },
            signal:    ["TERM", "com.Bose.SoundTouch"],
            quit:      "io.qt.SoundTouchHelper",
            launchctl: [
              "com.Bose.SoundTouch",
              "application.com.Bose.SoundTouch",
            ]

  zap trash: [
    "~/Library/Application Support/SoundTouch",
    "~/Library/Caches/SoundTouch",
    "~/Library/Saved Application State/com.Bose.SoundTouch application.savedState",
    "~/Library/Saved Application State/com.Bose.SoundTouch.savedState",
  ]
end
