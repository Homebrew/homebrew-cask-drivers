cask 'elgato-video-capture' do
  version '2.0,8701'
  sha256 'dbb6b64143cf5954bdef1b9543b627bf482fe857cbeece0738bb3ca029fb47b9'

  url "https://edge.elgato.com/video-capture/macos/#{version.before_comma}/final/Elgato%20Video%20Capture%20#{version.before_comma}%20(#{version.after_comma}).dmg"
  name 'Elgato Video Capture'
  homepage 'https://www.elgato.com/en/video-capture/support'

  depends_on macos: '>= :el_capitan'

  app 'Elgato Video Capture.app'
end
