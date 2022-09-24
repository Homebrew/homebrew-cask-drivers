cask "obs-ios-camera-source" do
  version "2.9.3"
  sha256 "18622d510da58bc903bf05a985c1cb0a6dc3f9591c698d89f37595b18ba79624"

  url "https://github.com/wtsnz/obs-ios-camera-source/releases/download/v#{version}/obs-ios-camera-source-#{version}-macos-universal.pkg",
      verified: "github.com/wtsnz/obs-ios-camera-source/"
  name "OBS iOS Camera Source"
  desc "iOS camera plugin for OBS Studio"
  homepage "https://obs.camera/docs/getting-started/ios-camera-plugin-usb/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "obs"
  depends_on macos: ">= :high_sierra"

  pkg "obs-ios-camera-source-#{version}-macos-universal.pkg"

  uninstall pkgutil: "com.wtsnz.obs-ios-camera-source-plugin",
            delete:  "/Library/Application Support/obs-studio/plugins/obs-ios-camera-source",
            rmdir:   "/Library/Application Support/obs-studio/plugins"
end
