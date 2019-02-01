cask 'elgato-stream-deck' do
  version '4.0.2.9798'
  sha256 '2f5780f31cfd450cfd1c8dd09126484a37387aff9bb95548e80ad862bc32836a'

  url "https://edge.elgato.com/egc/macos/sd/Stream_Deck_#{version}.pkg"
  appcast 'https://gaming.help.elgato.com/customer/en/portal/articles/2793637-elgato-stream-deck-software-release-notes'
  name 'Elgato Stream Deck'
  homepage 'https://www.elgato.com/en/gaming/stream-deck'

  depends_on macos: '>= :sierra'

  pkg "Stream_Deck_#{version}.pkg"

  uninstall launchctl: 'com.elgato.StreamDeck',
            pkgutil:   'com.elgato.StreamDeck'
end
