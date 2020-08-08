cask "elecom-mouse-assistant" do
  version "5.1.14.003"
  sha256 "91cb66dc584fabdb4e70cdba7d3aefe4c3046e4205891ca5bd80cf4f381a073b"

  # dl.elecom.co.jp was verified as official when first introduced to the cask
  url "https://dl.elecom.co.jp/support/download/peripheral/mouse/assistant/mac/ELECOM_Mouse_Installer_#{version}.zip"
  appcast "https://www.elecom.co.jp.e.gj.hp.transer.com/global/download-list/utility/mouse_assistant/mac/"
  name "ELECOM Mouse Assistant"
  homepage "https://www.elecom.co.jp.e.gj.hp.transer.com/global/download-list/utility/mouse_assistant/"

  container nested: "ELECOM_Mouse_Installer_#{version}.dmg"

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
