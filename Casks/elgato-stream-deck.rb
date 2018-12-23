cask 'elgato-stream-deck' do
  version '3.3.1.8372'
  sha256 'c70930e88ea4f8079327e585577cafc7ec194d0f446cf9801ea906b6883272f3'

  url "https://edge.elgato.com/egc/macos/sd/Stream_Deck_#{version}.pkg"
  name 'Elgato Stream Deck'
  homepage 'https://www.elgato.com/en/gaming/stream-deck'

  pkg "Stream_Deck_#{version}.pkg"

  uninstall launchctl: 'com.elgato.StreamDeck',
            pkgutil:   'com.elgato.StreamDeck'
end
