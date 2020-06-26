cask 'fujitsu-scansnap-home' do
  version '1.8.0'
  sha256 '1ce1a8459ada83d3f565a36c224196e55a8440d74ded757cea53cf8b9c2d370e'

  # origin.pfultd.com/ was verified as official when first introduced to the cask
  url "https://origin.pfultd.com/downloads/ss/sshinst/m-#{version.no_dots}/MacSSHDownloadInstaller_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.pfu.fujitsu.com/imaging/ss_hist/en/mac/index.html'
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
