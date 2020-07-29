cask "asix-ax88179" do
  version "2.17.0"
  sha256 "6209cd0f3f923bf45d8a6088cfb18124926c2dc676fe3f7e3b042cf866389884"

  url "https://www.asix.com.tw/FrootAttach/driver/AX88179_178A_macOS_10.9_to_10.15_Driver_Installer_v#{version}.zip"
  name "AX88179"
  homepage "https://www.asix.com.tw/download.php?sub=driverdetail&PItemID=131"

  container nested: "AX88179_178A_macOS_10.9_to_10.15_Driver_Installer_v#{version}/AX88179_178A_v#{version}.dmg"

  if MacOS.version <= :mojave
    pkg ".AX88179_178A_10.9_10.14.pkg"
  else
    pkg ".AX88179_178A_10.15.pkg"
  end

  postflight do
    system_command "/sbin/kextload",
                   args: ["-b", "com.asix.driver.ax88179-178a"],
                   sudo: true
  end

  uninstall_preflight do
    system_command "/usr/sbin/installer",
                   args: [
                     "-pkg", "#{staged_path}/AX88179_178A_Uninstall_v1.7.0.pkg",
                     "-target", "/"
                   ],
                   sudo: true
  end

  uninstall kext:    "com.asix.driver.ax88179-178a",
            pkgutil: "com.asix.pkg.ax88179-178a*"

  caveats do
    reboot
  end
end
