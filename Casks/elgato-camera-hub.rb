cask "elgato-camera-hub" do
  version "1.5.0.801"
  sha256 "0bcfa42bfb5d384291c54bfbf770089b02acb4e815c0847a9b03a595a35973e3"

  url "https://edge.elgato.com/egc/macos/echm/#{version.major_minor_patch.delete_suffix(".0")}/Camera_Hub_#{version.csv.first}#{version.csv.second.prepend("%23") if version.csv.second}.pkg"
  name "elgato-camera-hub"
  desc "Elgato FACECAM configuration tool"
  homepage "https://www.elgato.com/en/facecam"

  livecheck do
    url "https://www.elgato.com/sites/default/files/downloads.json"
    regex(%r{"downloadURL"\s*:\s*"[^"]*?/Camera[._-]Hub[._-]v?(\d+(?:\.\d+)+)(?:%23)?(\d+)?\.pkg"}i)
    strategy :page_match do |page, regex|
      match = page.scan(regex).flatten
      match.second.blank? ? match : "#{match.first},#{match.second}"
    end
  end

  pkg "Camera_Hub_#{version.tr(",", "#")}.pkg"

  uninstall signal:    ["TERM", "com.elgato.CameraHub"],
            launchctl: "com.elgato.CameraHub",
            pkgutil:   "com.elgato.CameraHub.Installer",
            delete:    "/Applications/Elgato Camera Hub.app"

  zap trash: [
    "~/Library/Logs/CameraHub",
    "~/Library/Preferences/com.elgato.CameraHub.plist",
  ]
end
