cask 'elgato-stream-deck' do
  version '4.1.1.9975'
  sha256 '8e452169c709a200fda396da49269b6eece150660ceb06e6f0015f2cf773ec2a'

  url "https://edge.elgato.com/egc/macos/sd/Stream_Deck_#{version}.pkg"
  appcast 'https://gaming.help.elgato.com/customer/en/portal/articles/2793637-elgato-stream-deck-software-release-notes'
  name 'Elgato Stream Deck'
  homepage 'https://www.elgato.com/en/gaming/stream-deck'

  depends_on macos: '>= :sierra'

  pkg "Stream_Deck_#{version}.pkg"

  uninstall launchctl: 'com.elgato.StreamDeck',
            pkgutil:   'com.elgato.StreamDeck'
end
