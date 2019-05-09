cask 'elgato-video-capture' do
  version '2.0.8701'
  sha256 'dbb6b64143cf5954bdef1b9543b627bf482fe857cbeece0738bb3ca029fb47b9'

  url "https://edge.elgato.com/video-capture/macos/#{version.major_minor}/final/Elgato%20Video%20Capture%20#{version.major_minor}%20(#{version.patch}).dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/651790b07f55248c266474ee243a733a'
  name 'Elgato Video Capture'
  homepage 'https://www.elgato.com/en/video-capture/'

  depends_on macos: '>= :el_capitan'

  app 'Elgato Video Capture.app'

  zap trash: [
               '~/Library/Application Support/Elgato Video Capture',
               '~/Library/Application Support/com.elgato.VideoCapture',
               '~/Library/Caches/com.elgato.VideoCapture',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.elgato.VideoCapture',
               '~/Library/Logs/elgato.log',
               '~/Library/Preferences/com.elgato.VideoCapture.plist',
             ]
end
