cask 'fujitsu-scansnap-home' do
  version '1.6.0'
  sha256 '46d1ef801f233725111994b5d7b904003bb28932c49bdcb90a9eca200d29951c'

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
