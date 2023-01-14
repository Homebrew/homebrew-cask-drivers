cask "obs-ios-camera-source" do
  version "2.9.4"
  sha256 "8628ad602d1e3087468c7a0bc3d030fdc94c9f1b5e3107571d943123d24f9a1a"

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

  uninstall pkgutil: [
              "com.wtsnz.obs-ios-camera-source-plugin",
              "io.loftlabs.obs-ios-camera-source",
            ],
            delete:  "/Library/Application Support/obs-studio/plugins/obs-ios-camera-source",
            rmdir:   "/Library/Application Support/obs-studio/plugins"
end
