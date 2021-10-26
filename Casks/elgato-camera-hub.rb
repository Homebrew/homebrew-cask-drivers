cask "elgato-camera-hub" do
  version "1.1.0.238"
  sha256 "7d4063b907f4b17d1dc2097f4f1b24c5eb9f90a6fed408a949c8d2a1f3022744"

  url "https://edge.elgato.com/egc/macos/echm/#{version.major_minor}/Camera_Hub_#{version}.pkg"
  name "elgato-camera-hub"
  desc "Elgato FACECAM configuration tool"
  homepage "https://www.elgato.com/en/facecam"

  livecheck do
    url "https://www.elgato.com/sites/default/files/downloads.json"
    regex(%r{"downloadURL"\s*:\s*"[^"]*?/Camera[._-]Hub[._-]v?(\d+(?:\.\d+)+)\.pkg"}i)
  end

  pkg "Camera_Hub_#{version}.pkg"

  uninstall launchctl: "com.elgato.CameraHub",
            quit:      "com.elgato.CameraHub",
            pkgutil:   "com.elgato.CameraHub.Installer"

  zap trash: [
    "~/Library/Logs/CameraHub",
    "~/Library/Preferences/com.elgato.CameraHub.plist",
  ]
end
