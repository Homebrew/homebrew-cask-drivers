cask 'elgato-stream-deck' do
  version '4.0.0.9742'
  sha256 'ad9b4696cafb063343ba79d647f28ed36e4195797b32ffb24a46dcbb32822b5f'

  url "https://edge.elgato.com/egc/macos/sd/Stream_Deck_#{version}.pkg"
  appcast 'https://gaming.help.elgato.com/customer/en/portal/articles/2793637-elgato-stream-deck-software-release-notes'
  name 'Elgato Stream Deck'
  homepage 'https://www.elgato.com/en/gaming/stream-deck'

  pkg "Stream_Deck_#{version}.pkg"

  uninstall launchctl: 'com.elgato.StreamDeck',
            pkgutil:   'com.elgato.StreamDeck'
end
