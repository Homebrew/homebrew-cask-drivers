cask "asix-ax88179" do
  version "2.19.0_beta2,1.8.0"
  sha256 "23dca0c54f2779c135dc250a937314ad0b26252c2dbfdd2eaa36bf284ba09a72"

  url "https://www.asix.com.tw/en/support/download/file/119"
  name "AX88179"
  desc "USB 3.0 to gigabit ethernet drivers for ASIX Electronics devices"
  homepage "https://www.asix.com.tw/en/support/download"

  container nested: "AX88179_178A_macOS_10.9_to_10.15_Driver_Installer_v#{version.before_comma}/AX88179_178A_v#{version.before_comma}.dmg"

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
