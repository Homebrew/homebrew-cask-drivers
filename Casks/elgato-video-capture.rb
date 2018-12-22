cask 'elgato-video-capture' do
  if MacOS.version <= :yosemite
    version '1.1.5,7253'
    sha256 'e75fa022944d662d58f8715b0a53340d48d76a7bdc8a020e1ac981bbd317eee5'
    # http://files.elgato.com/evcdownloads/support/evc_115_7253.dmg
  else
    version '2.0,8701'
    sha256 'dbb6b64143cf5954bdef1b9543b627bf482fe857cbeece0738bb3ca029fb47b9'
    # https://update.elgato.com/mac/video-capture-update/download.php?build=8701
    # https://edge.elgato.com/video-capture/macos/2.0/final/Elgato Video Capture 2.0 (8701).dmg
  end

  url "https://update.elgato.com/mac/video-capture-update/download.php?build=#{version.after_comma}"
  name 'Elgato Video Capture'
  homepage 'https://www.elgato.com/en/video-capture/support'

  depends_on macos: '>= :snow_leopard'

  app 'Elgato Video Capture.app'
end
