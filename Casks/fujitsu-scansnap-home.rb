cask 'fujitsu-scansnap-home' do
  version '1.7.0'
  sha256 '8995fb4c000deaed2cdcf1dce347bdd95a79f275dd3a60695e72771efd417c63'

  # origin.pfultd.com was verified as official when first introduced to the cask
  url "https://origin.pfultd.com/downloads/IMAGE/driver/ss/inst2/ix1500/m-software/MacSSHomeInstaller_#{version.dots_to_underscores}.dmg"
  name 'ScanSnap Home'
  homepage 'https://www.fujitsu.com/global/products/computing/peripheral/scanners/scansnap/software/sshome/index.html'

  depends_on macos: '>= :sierra'
  
  installer manual: 'ScanSnap Home Setup.app'

  uninstall launchctl: [
                         'com.fujitsu.pfu.SshRegister',
                         'com.fujitsu.pfu.SshResident',
                         'com.fujitsu.pfu.SshSCloudWatch',
                       ],
            quit:      [
                         'com.fujitsu.pfu.SSMenuBar',
                         'com.fujitsu.pfu.Ssh*',
                       ],
            pkgutil:   'com.fujitsu.pfu.scansnap.Home.*'
end
