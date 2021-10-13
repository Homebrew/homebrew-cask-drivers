cask "elecom-mouse-assistant" do
  version "5.2.2.003"
  sha256 "eafd9a09d13addf9ff1a5c74ad66f8c82ee7c12270d15c930287732deb88e5f0"

  url "https://dl.elecom.co.jp/support/download/peripheral/mouse/assistant/mac/ELECOM_Mouse_Installer_#{version}.zip"
  name "ELECOM Mouse Assistant"
  desc "Software to more effectively use an ELECOM mouse"
  homepage "https://www.elecom.co.jp/global/download-list/utility/mouse_assistant/"

  livecheck do
    url "https://www.elecom.co.jp/global/download-list/utility/mouse_assistant/mac/"
    strategy :page_match
    regex(/ELECOM_Mouse_Installer_(\d+(?:\.\d+)*)\.zip/i)
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
