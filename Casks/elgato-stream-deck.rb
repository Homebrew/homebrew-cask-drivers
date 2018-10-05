cask 'elgato-stream-deck' do
  version '3.3.0.8359'
  sha256 '9401b4f755b83ce50a5958a05290cedfc88c5451cc5a1c17dbcc092dc60b6409'

  url "https://edge.elgato.com/egc/macos/sd/Stream_Deck_#{version}.pkg"
  name 'Elgato Stream Deck'
  homepage 'https://www.elgato.com/en/gaming/stream-deck'

  pkg "Stream_Deck_#{version}.pkg"

  uninstall launchctl: 'com.elgato.StreamDeck',
            pkgutil:   'com.elgato.StreamDeck'
end
