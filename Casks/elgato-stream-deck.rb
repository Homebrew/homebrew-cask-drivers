cask "elgato-stream-deck" do
  version "4.9.1.13179"
  sha256 "5d40774939c27aeed3d7e6a95116311142191c21b0867d3a74064ddd4b415d16"

  url "https://edge.elgato.com/egc/macos/sd/Stream_Deck_#{version}.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://gc-updates.elgato.com/mac/sd-update/final/download-website.php"
  name "Elgato Stream Deck"
  homepage "https://www.elgato.com/en/gaming/stream-deck"

  depends_on macos: ">= :sierra"

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
