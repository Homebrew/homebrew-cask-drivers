cask "elgato-wave-link" do
  version "1.6.0.3130"
  sha256 "85363d85dd1e441d0aca12cf97129e097f0bd5f526ec724455f0dbd7b0490cb6"

  url "https://edge.elgato.com/egc/macos/wavelink/#{version.major_minor_patch}/WaveLink_#{version}.pkg"
  name "Elgato Wave Link"
  desc "Software custom-built for content creation"
  homepage "https://www.elgato.com/en/wave-1"

  livecheck do
    url "https://www.elgato.com/sites/default/files/downloads.json"
    regex(%r{"downloadURL"\s*:\s*"[^"]*?/WaveLink[._-]v?(\d+(?:[._]\d+)+)\.pkg"}i)
  end

  depends_on macos: ">= :catalina"

  pkg "WaveLink_#{version}.pkg"

  uninstall launchctl: "com.elgato.WaveLink",
            quit:      "com.elgato.WaveLink",
            pkgutil:   "com.elgato.pkg.WaveLink"

  zap trash: [
    "~/Library/Logs/WaveLink",
    "~/Library/Preferences/com.elgato.WaveLink.plist",
  ]
end
