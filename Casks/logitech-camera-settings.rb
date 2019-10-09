cask 'logitech-camera-settings' do
  version '2.6.2'
  sha256 '1895fc8abbce644d6abb68fc64435ae9bb5bb722b80e3f47754d934c79878211'

  # https://support.logi.com was verified as official when first introduced to the cask
  url "https://download01.logi.com/web/ftp/pub/techsupport/cameras/Webcams/LogiCameraSettings_#{version}.pkg"
  appcast 'https://support.logi.com/hc/en-us/articles/360024692954--Downloads-HD-Webcam-C270'
  name 'Logitech Camera Settings'
  homepage 'https://support.logi.com/hc/en-us/articles/360024692954--Downloads-HD-Webcam-C270'

  depends_on macos: '>= :mojave'

  pkg "LogiCameraSettings_#{version}.pkg"

  uninstall pkgutil: [
                       'com.logitech.vc.LogiVCCoreService.launchd.pkg',
                       'com.logitech.vc.LogiVCCoreService.app.pkg',
                       'com.logitech.vc.CameraSettings.pkg',
                     ]
end
