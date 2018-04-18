cask 'asix-ax88179' do
  version '2.10.0'
  sha256 '2b03b808c919112cb50b85e63b811531308c0d5d395a86f3f6617c783210f852'

  url "http://www.asix.com.tw/FrootAttach/driver/AX88179_178A_Macintosh_Driver_Installer_v#{version}.zip"
  name 'AX88179'
  homepage 'http://www.asix.com.tw/download.php?sub=driverdetail&PItemID=131'

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
end
