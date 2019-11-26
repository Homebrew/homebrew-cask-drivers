cask 'asix-ax88179' do
  if MacOS.version >= :catalina
    version '2.15.0'
    sha256 '17ae7031bd8e9ffb5cfea9ee17dcd4e32b38297a6241a5c9c2ac0589fe5dfcca'
  else
    version '2.14.0'
    sha256 '4330ccf68f8879e7a2f6ada12a5bcdb192900e69e11b0d1e0558c3fbd331d674'
  end

  if MacOS.version >= :catalina
    url "https://www.asix.com.tw/FrootAttach/driver/AX88179_178A_macOS_10.15_above_Driver_Installer_v#{version}.zip"
  else
    url "https://www.asix.com.tw/FrootAttach/driver/AX88179_178A_macintosh_Driver_Installer_v#{version}.zip"
  end
  name 'AX88179'
  homepage 'https://www.asix.com.tw/download.php?sub=driverdetail&PItemID=131'

  if MacOS.version >= :catalina
    container nested: "AX88179_178A_macOS_10.15_above_Driver_Installer_v#{version}/AX88179_178A.dmg"
  else
    container nested: "AX88179_178A_macintosh_Driver_Installer_v#{version}/AX88179_178A.dmg"
  end

  pkg "AX88179_178A_v#{version}.pkg"

  postflight do
    system_command '/sbin/kextload',
                   args: ['-b', 'com.asix.driver.ax88179-178a'],
                   sudo: true
  end

  uninstall early_script: {
                            executable: "#{staged_path}/AX88179_178A_Uninstall_v150.command",
                          },
            kext:         'com.asix.driver.ax88179-178a',
            pkgutil:      'com.asix.pkg.ax88179-178a*'

  caveats do
    reboot
  end
end
