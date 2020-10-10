cask "asix-ax88179" do
  version "2.18.0"
  sha256 "a646f75aed3d45435409505b9c3ae90364862d4572ca74e26c282bb1510c7105"

  url "https://www.asix.com.tw/en/support/download/file/119"
  name "AX88179"
  desc "USB 3.0 to 10/100/1000M Gigabit Ethernet Controller for ASIX Electronics devices. Compatible with UGreen USB 3.0 to Ethernet adapter."
  homepage "https://www.asix.com.tw/en/support/download"

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
                      "-pkg", "#{staged_path}/AX88179_178A_Uninstall_v1.8.0.pkg",
                      "-target", "/"
                    ],
                    sudo: true
  end

  uninstall kext:    "com.asix.driver.ax88179-178a",
            pkgutil: [
              "com.asix.pkg.ax88179-178a*",
              "com.asix.ax88179.uninstall",
            ]

  caveats do
    reboot
  end
end
