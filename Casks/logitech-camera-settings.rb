cask "logitech-camera-settings" do
  version "3.0.23"
  sha256 "ff8ce22aab2ef7a4e63044585e34497cffd8edb0cc077902ca0da3dbb40f5ea2"

  url "https://download01.logi.com/web/ftp/pub/techsupport/cameras/Webcams/LogiCameraSettings_#{version}.pkg"
  name "Logitech Camera Settings"
  homepage "https://support.logi.com/hc/en-us/articles/360024692954--Downloads-HD-Webcam-C270"

  depends_on macos: ">= :mojave"

  pkg "LogiCameraSettings_#{version}.pkg"

  uninstall signal:  ["TERM", "com.logitech.vc.LogiVCCoreService"],
            pkgutil: [
              "com.logitech.vc.LogiVCCoreService.launchd.pkg",
              "com.logitech.vc.LogiVCCoreService.app.pkg",
              "com.logitech.vc.CameraSettings.pkg",
            ]
end
