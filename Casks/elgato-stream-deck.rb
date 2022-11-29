cask "elgato-stream-deck" do
  version "6.0.1.17722"
  sha256 "cb2108ecd10b6d710d16709afef1a03b8b3bdd49fff64d857e1e8bd7ba9c79da"

  url "https://edge.elgato.com/egc/macos/sd/Stream_Deck_#{version}.pkg"
  name "Elgato Stream Deck"
  desc "Assign keys, and then decorate and label them"
  homepage "https://www.elgato.com/en/gaming/stream-deck"

  livecheck do
    url "https://gc-updates.elgato.com/mac/sd-update/final/download-website.php"
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  pkg "Stream_Deck_#{version}.pkg"

  uninstall delete:    "/Applications/Elgato Stream Deck.app",
            launchctl: "com.elgato.StreamDeck",
            quit:      "com.elgato.StreamDeck",
            pkgutil:   "com.elgato.StreamDeck"

  zap trash: [
    "~/Library/Application Support/com.elgato.StreamDeck",
    "~/Library/Caches/com.elgato.StreamDeck",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.elgato.StreamDeck",
    "~/Library/Preferences/com.elgato.StreamDeck.plist",
  ]
end
