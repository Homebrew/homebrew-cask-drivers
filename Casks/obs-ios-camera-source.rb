cask "obs-ios-camera-source" do
  version "2.9.0"
  sha256 "afef9b3b9b5a0494a79f3c3af84d090312141196782b3cd577b9086d1c3f9b9b"

  url "https://github.com/wtsnz/obs-ios-camera-source/releases/download/v#{version}/obs-ios-camera-source-v#{version}-macos.pkg",
      verified: "github.com/wtsnz/obs-ios-camera-source/"
  name "OBS iOS Camera Source"
  desc "iOS Camera Plugin for OBS Studio"
  homepage "https://obs.camera/docs/getting-started/ios-camera-plugin-usb/"

  depends_on cask: "obs"
  depends_on macos: ">= :high_sierra"

  pkg "obs-ios-camera-source-v#{version}-macos.pkg"

  uninstall pkgutil: "com.wtsnz.obs-ios-camera-source-plugin",
            delete:  "/Library/Application Support/obs-studio/plugins/obs-ios-camera-source"
end
