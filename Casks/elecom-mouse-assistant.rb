cask "elecom-mouse-assistant" do
  version "5.2.7.000"
  sha256 "e82159440aedcc2d375be0bc4ae5cf0c1db43b5f9afdd7ff59901414d2c897ff"

  url "https://dl.elecom.co.jp/support/download/peripheral/mouse/assistant/mac/ELECOM_Mouse_Installer_#{version}.zip"
  name "ELECOM Mouse Assistant"
  desc "Software to more effectively use an ELECOM mouse"
  homepage "https://www.elecom.co.jp/global/download-list/utility/mouse_assistant/"

  livecheck do
    url "https://www.elecom.co.jp/global/download-list/utility/mouse_assistant/mac/"
    regex(/ELECOM_Mouse_Installer_(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :el_capitan"

  pkg "ELECOM_Mouse_Installer_#{version}.pkg"

  uninstall pkgutil:   [
              "jp.co.elecom.mousePane",
              "jp.co.elecom.mouse.ELECOM-Uninstall",
              "jp.co.elecom.ELECOM-Mouse-Util",
            ],
            launchctl: "jp.com.ELECOM.autorun"

  caveats do
    reboot
  end
end
