cask "elgato-wave-link" do
  version "1.2.3.2622"
  sha256 "6d24cf9fda7e22931d6918a5d18097a2d60f2f99aee4c6d15fd3483bc9d6f841"

  url "https://edge.elgato.com/egc/macos/wavelink/#{version.major_minor_patch.chomp(".0")}/WaveLink_#{version}.pkg"
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
