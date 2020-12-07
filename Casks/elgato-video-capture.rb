cask "elgato-video-capture" do
  version "2.0.3.8714_1821"
  sha256 "ef5fd243d140ccd5dca8e3d571c18fb7ca1480a5713720af9cd826ae87ca3603"

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
