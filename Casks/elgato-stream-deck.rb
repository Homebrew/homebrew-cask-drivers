cask 'elgato-stream-deck' do
  version '4.4.1.12187'
  sha256 '9d311bab7c0fa9723db34fe68c0f2056d6fe3f37e5c3978df4f5df26ce62f913'

  url "https://edge.elgato.com/egc/macos/sd/Stream_Deck_#{version}.pkg"
  appcast 'https://help.elgato.com/hc/en-us/articles/360028242631-Elgato-Stream-Deck-Software-Release-Notes',
          configuration: version.major_minor
  name 'Elgato Stream Deck'
  homepage 'https://www.elgato.com/en/gaming/stream-deck'

  depends_on macos: '>= :sierra'

  pkg "Stream_Deck_#{version}.pkg"

  uninstall launchctl: 'com.elgato.StreamDeck',
            quit:      'com.elgato.StreamDeck',
            pkgutil:   'com.elgato.StreamDeck'

  zap trash: [
               '~/Library/Application Support/com.elgato.StreamDeck',
               '~/Library/Caches/com.elgato.StreamDeck',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.elgato.StreamDeck',
               '~/Library/Preferences/com.elgato.StreamDeck.plist',
             ]
end
