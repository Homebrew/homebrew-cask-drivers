cask "elgato-camera-hub" do
  version "1.4.0.770"
  sha256 "4a8d2a8265333977ba641ca6a076a558cb106b2ba99450f831701e11fc136f9c"

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

  uninstall_postflight do
    system "killall", "Camera Hub"
  end

  uninstall pkgutil:   "com.elgato.CameraHub.Installer",
            quit:      "com.elgato.CameraHub",
            launchctl: "com.elgato.CameraHub",
            delete:    "/Applications/Elgato Camera Hub.app"

  zap trash: [
    "~/Library/Logs/CameraHub",
    "~/Library/Preferences/com.elgato.CameraHub.plist",
  ]
end
