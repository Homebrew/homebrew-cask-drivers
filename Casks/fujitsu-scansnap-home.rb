cask 'fujitsu-scansnap-home' do
  version '1.5.0'
  sha256 '5489de294fb4a30d74e325cb020fe1ed3789d1193507ebc912f0c2c218c75b7d'

  # origin.pfultd.com was verified as official when first introduced to the cask
  url "https://origin.pfultd.com/downloads/ss/sshinst/m-#{version.no_dots}/MacSSHDownloadInstaller_#{version.dots_to_underscores}.dmg"
  name 'ScanSnap Home'
  homepage 'https://www.fujitsu.com/global/products/computing/peripheral/scanners/scansnap/software/sshome/index.html'

  depends_on macos: '>= :sierra'
  container nested: "Download/MacSSHomeInstaller_#{version.dots_to_underscores}.dmg"

  pkg 'ScanSnap Home.pkg'

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
