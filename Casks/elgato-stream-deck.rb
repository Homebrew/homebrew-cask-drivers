cask 'elgato-stream-deck' do
  version '3.0.1.6842'
  sha256 '49844039fb48cf9774ef3a555c0b8f49b5b1904540fd2c1f0bf7162b0fbaa027'

  url "https://edge.elgato.com/egc/macos/sd/Stream_Deck_#{version}.pkg"
  name 'Elgato Stream Deck'
  homepage 'https://www.elgato.com/en/gaming/stream-deck'

  pkg "Stream_Deck_#{version}.pkg"

  uninstall launchctl: 'com.elgato.StreamDeck',
            pkgutil:   'com.elgato.StreamDeck'
end
