cask "elgato-wave-link" do
  version "1.2.0.2595"
  sha256 "f973725644a57b3b5b3d7bc51a770f9bb7401957b7167f099a1884efdb66d432"

  url "https://edge.elgato.com/egc/macos/wavelink/1.2/WaveLink_#{version}.pkg"
  name "Elgato Wave Link"
  desc "Intuitive software custom-built for content creation"
  homepage "https://www.elgato.com/en/wave-1"

  depends_on macos: ">= :sierra"

  pkg "WaveLink_#{version}.pkg"

  uninstall launchctl: "com.elgato.WaveLink",
            quit:      "com.elgato.WaveLink",
            pkgutil:   "com.elgato.pkg.WaveLink"

  zap trash: [
    "~/Library/Logs/WaveLink",
    "~/Library/Preferences/com.elgato.WaveLink.plist",
  ]
end
