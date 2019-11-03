cask 'fujitsu-scansnap-home' do
  version '1.4.1'
  sha256 '5293855d9d40629efa719c9ee283a186d94c8092f5d84936a01ee7a2b003cf0c'

  # origin.pfultd.com was verified as official when first introduced to the cask
  url "https://origin.pfultd.com/downloads/ss/sshinst/m-#{version.no_dots}/MacSSHOfflineInstaller_#{version.dots_to_underscores}.dmg"
  name 'ScanSnap Home'
  homepage 'https://www.fujitsu.com/global/products/computing/peripheral/scanners/scansnap/software/sshome/index.html'

  depends_on macos: '>= :sierra'
  container nested: "Download/MacSSHomeInstaller_#{version.dots_to_underscores}.dmg"

  pkg 'ScanSnap Home.pkg'

  uninstall pkgutil: "com.fujitsu.pfu.scansnap.Home.#{version}"
end
