cask "elgato-camera-hub" do
  version "1.2.2.397"
  sha256 "2e35174461b01a22494c2f710160d76b7e1b44cac629d2ce63510d4518d65d7a"

  url "https://edge.elgato.com/egc/macos/echm/#{version.major_minor_patch.delete_suffix(".0")}/Camera_Hub_#{version}.pkg"
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
