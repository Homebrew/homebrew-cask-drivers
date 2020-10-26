cask "asix-ax88179" do
  version "2.18.0,1.8.0"
  sha256 "a646f75aed3d45435409505b9c3ae90364862d4572ca74e26c282bb1510c7105"

  url "https://www.asix.com.tw/en/support/download/file/119"
  name "AX88179"
  desc "USB 3.0 to gigabit ethernet drivers for ASIX Electronics devices"
  homepage "https://www.asix.com.tw/download.php?sub=driverdetail&PItemID=131"

  container nested: "AX88179_178A_macOS_10.9_to_10.15_Driver_Installer_v#{version.before_comma}/AX88179_178A_v#{version.before_comma}.dmg"

  app "AX88179_178A_v#{version.before_comma}.app"

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
