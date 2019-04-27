cask 'asix-ax88179' do
  version '2.14.0'
  sha256 '4330ccf68f8879e7a2f6ada12a5bcdb192900e69e11b0d1e0558c3fbd331d674'

  url "https://www.asix.com.tw/FrootAttach/driver/AX88179_178A_macintosh_Driver_Installer_v#{version}.zip"
  name 'AX88179'
  homepage 'https://www.asix.com.tw/download.php?sub=driverdetail&PItemID=131'

  container nested: "AX88179_178A_Macintosh_Driver_Installer_v#{version}/AX88179_178A.dmg"

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
