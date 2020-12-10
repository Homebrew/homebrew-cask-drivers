cask "asix-ax88179" do
  version "2.19.0,1.8.0"
  sha256 :no_check

  url "https://www.asix.com.tw/en/support/download/file/119"
  name "AX88179"
  desc "USB 3.0 to gigabit ethernet drivers for ASIX Electronics devices"
  homepage "https://www.asix.com.tw/en/support/download"

  container nested: "AX88179_178A_macOS_10.9_to_11_Driver_Installer_v#{version.before_comma}_beta2/AX88179_178A_v#{version.before_comma}.dmg"

  installer manual: "AX88179_178A_v#{version.before_comma}.app"

  uninstall_preflight do
    system_command "/usr/sbin/installer",
                   args: [
                     "-pkg", "#{staged_path}/AX88179_178A_Uninstall_v#{version.after_comma}.pkg",
                     "-target", "/"
                   ],
                   sudo: true
  end

  uninstall pkgutil: "com.asix.ax88179.uninstall"

  caveats do
    reboot
  end
end
