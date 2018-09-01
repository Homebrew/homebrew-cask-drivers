cask 'elgato-stream-deck' do
  version '3.1.1.7457'
  sha256 '28b9a79313581fcd60fd4776d12f1305dc084a8e10e73ea58c1982536fd15553'

  url "https://edge.elgato.com/egc/macos/sd/Stream_Deck_#{version}.pkg"
  name 'Elgato Stream Deck'
  homepage 'https://www.elgato.com/en/gaming/stream-deck'

  pkg "Stream_Deck_#{version}.pkg"

  uninstall launchctl: 'com.elgato.StreamDeck',
            pkgutil:   'com.elgato.StreamDeck'
end
