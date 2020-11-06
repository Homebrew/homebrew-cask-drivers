cask "elgato-video-capture" do
  version "2.0.2.8713_1762"
  sha256 "87a5f0dd0c3fe091a0edcca98349137a4e7bda21524a3c4b776f3414e7c7cf90"

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
