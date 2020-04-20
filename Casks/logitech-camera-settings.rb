cask 'logitech-camera-settings' do
  version '3.0.12'
  sha256 'b56b15524436a3d6a62d38d3c738e5798d2fec74a3d0e5040cb664da5880ca10'

  url "https://download01.logi.com/web/ftp/pub/techsupport/cameras/Webcams/LogiCameraSettings_#{version}.pkg"
  name 'Logitech Camera Settings'
  homepage 'https://support.logi.com/hc/en-us/articles/360024692954--Downloads-HD-Webcam-C270'

  depends_on macos: '>= :mojave'

  pkg "LogiCameraSettings_#{version}.pkg"

  uninstall signal:  ['TERM', 'com.logitech.vc.LogiVCCoreService'],
            pkgutil: [
                       'com.logitech.vc.LogiVCCoreService.launchd.pkg',
                       'com.logitech.vc.LogiVCCoreService.app.pkg',
                       'com.logitech.vc.CameraSettings.pkg',
                     ]
end
