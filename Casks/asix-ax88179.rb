cask 'asix-ax88179' do
  if MacOS.version <= :mojave
    version '2.14.0'
    sha256 '4330ccf68f8879e7a2f6ada12a5bcdb192900e69e11b0d1e0558c3fbd331d674'

    url "https://www.asix.com.tw/FrootAttach/driver/AX88179_178A_macintosh_Driver_Installer_v#{version}.zip"

    container nested: "AX88179_178A_macintosh_Driver_Installer_v#{version}/AX88179_178A.dmg"
  else
    version '2.16.0'
    sha256 'afe9d8563a5d8eeacb81857e2afc26162f63727750b97cdd434322e664f09db0'

    url "https://www.asix.com.tw/FrootAttach/driver/AX88179_178A_macOS_10.15_above_Driver_Installer_v#{version}.zip"

    container nested: "AX88179_178A_macOS_10.15_above_Driver_Installer_v#{version}/AX88179_178A.dmg"
  end

  name 'AX88179'
  homepage 'https://www.asix.com.tw/download.php?sub=driverdetail&PItemID=131'

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
