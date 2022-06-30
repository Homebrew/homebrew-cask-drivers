cask "elecom-mouse-assistant" do
  version "5.2.5.001"
  sha256 "f6b7945e98c3a428a05444fd114ed8567ae1915b47fc60e1044baeac1219fd0c"

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
