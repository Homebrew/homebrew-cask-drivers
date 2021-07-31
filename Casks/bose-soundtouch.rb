cask "bose-soundtouch" do
  version "27.0.0-3377-1037583,mr4_c4ab85bd"
  sha256 "b84ee3bbe3350b14873daa003703b745ab24fc0af97615c74a20c6b3e5d87a57"

  url "https://downloads.bose.com/ced/soundtouch/#{version.after_comma}/SoundTouch-app-installer-#{version.before_comma}.dmg"
  name "Bose Soundtouch Controller App"
  desc "Control Bose SoundTouch systems from your computer"
  homepage "https://downloads.bose.com/ced/soundtouch/soundtouch_controller_app/index.html"

  # The first-party download page uses JavaScript to render the content. The
  # URL below redirects to the XML file containing release information that's
  # used as the data source for the download page.
  livecheck do
    url "https://worldwide.bose.com/updates/soundtouch"
    regex(%r{
      <RELEASE [^>]*?URLPATH=["']/ced/soundtouch/([^/]+)/?["'][^>]*?>\s*
      <IMAGE [^>]*?FILENAME=["']SoundTouch-app-installer-(\d+(?:\.\d+)+(?:-[a-z\d]+)+)\.dmg["']
    }ix)
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
