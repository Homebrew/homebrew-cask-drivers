cask "elecom-mouse-assistant" do
  version "5.2.1.002"
  sha256 "4105ba47f41fc874929e1aeb10f9a123fe24809e1502c24b08d2a801e0498b2c"

  url "https://dl.elecom.co.jp/support/download/peripheral/mouse/assistant/mac/ELECOM_Mouse_Installer_#{version}.zip"
  appcast "https://www.elecom.co.jp/global/download-list/utility/mouse_assistant/mac/"
  name "ELECOM Mouse Assistant"
  desc "Software to more effectively use an ELECOM mouse"
  homepage "https://www.elecom.co.jp/global/download-list/utility/mouse_assistant/"

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
