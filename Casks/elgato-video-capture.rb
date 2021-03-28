cask "elgato-video-capture" do
  version "2.0.5.1830"
  sha256 "ef294607a2b620907cbafb61970953d1c4dbce2d7e93b51413618b196afe74ee"

  url "https://edge.elgato.com/video-capture/macos/#{version.major_minor_patch}/final/Video_Capture_#{version}.zip"
  appcast "https://www.elgato.com/sites/default/files/downloads.json"
  name "Elgato Video Capture"
  homepage "https://www.elgato.com/en/video-capture/"

  depends_on macos: ">= :el_capitan"

  app "Elgato Video Capture.app"

  zap trash: [
    "~/Library/Application Support/Elgato Video Capture",
    "~/Library/Application Support/com.elgato.VideoCapture",
    "~/Library/Caches/com.elgato.VideoCapture",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.elgato.VideoCapture",
    "~/Library/Logs/elgato.log",
    "~/Library/Preferences/com.elgato.VideoCapture.plist",
  ]
end
