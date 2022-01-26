cask "elgato-stream-deck" do
  version "5.2.0.14948"
  sha256 "db5e1da755bdcf09cc42dd902d2758ae957569c371a6392aadd4d0fc98925c18"

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

  uninstall launchctl: "com.elgato.StreamDeck",
            quit:      "com.elgato.StreamDeck",
            pkgutil:   "com.elgato.StreamDeck"

  zap trash: [
    "~/Library/Application Support/com.elgato.StreamDeck",
    "~/Library/Caches/com.elgato.StreamDeck",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.elgato.StreamDeck",
    "~/Library/Preferences/com.elgato.StreamDeck.plist",
  ]
end
