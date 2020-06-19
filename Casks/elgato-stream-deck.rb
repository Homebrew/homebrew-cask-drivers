cask 'elgato-stream-deck' do
  version '4.8.0.13007'
  sha256 '95634c43dbbffd519cbae10302475b6a75afbc01c840115a6fa13a7f9edff48e'

  url "https://edge.elgato.com/egc/macos/sd/Stream_Deck_#{version}.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://gc-updates.elgato.com/mac/sd-update/final/download-website.php'
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
