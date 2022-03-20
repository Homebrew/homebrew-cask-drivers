cask "elgato-wave-link" do
  version "1.4.1.2927"
  sha256 "cd074ff4477944f39b0102a00534f8ddfecdb2f42afdc957171a9f301368c630"

  url "https://edge.elgato.com/egc/macos/wavelink/#{version.major_minor_patch}/WaveLink_#{version}.pkg"
  name "Elgato Wave Link"
  desc "Software custom-built for content creation"
  homepage "https://www.elgato.com/en/wave-1"

  livecheck do
    url "https://www.elgato.com/sites/default/files/downloads.json"
    regex(%r{"downloadURL"\s*:\s*"[^"]*?/WaveLink[._-]v?(\d+(?:\.\d+)+)\.pkg"}i)
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
