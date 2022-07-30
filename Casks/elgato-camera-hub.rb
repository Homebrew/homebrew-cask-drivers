cask "elgato-camera-hub" do
  version "1.2.3.409,2"
  sha256 "1d7e062ae1c205cbae37ce49d7f16401f25d62a81f9230a99802ed49ae655c31"

  url "https://edge.elgato.com/egc/macos/echm/#{version.major_minor_patch.delete_suffix(".0")}/Camera_Hub_#{version.csv.first}#{version.csv.second.prepend("%23") if version.csv.second}.pkg"
  name "elgato-camera-hub"
  desc "Elgato FACECAM configuration tool"
  homepage "https://www.elgato.com/en/facecam"

  livecheck do
    url "https://www.elgato.com/sites/default/files/downloads.json"
    regex(%r{"downloadURL"\s*:\s*"[^"]*?/Camera[._-]Hub[._-]v?(\d+(?:\.\d+)+)(?:%23)?(\d+)?\.pkg"}i)
    strategy :page_match do |page, regex|
      match = page.scan(regex).flatten
      match if match.second.blank?

      "#{match.first},#{match.second}"
    end
  end

  pkg "Camera_Hub_#{version.csv.first}.pkg"

  uninstall launchctl: "com.elgato.CameraHub",
            quit:      "com.elgato.CameraHub",
            pkgutil:   "com.elgato.CameraHub.Installer"

  zap trash: [
    "~/Library/Logs/CameraHub",
    "~/Library/Preferences/com.elgato.CameraHub.plist",
  ]
end
