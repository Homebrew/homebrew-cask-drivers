cask "fujitsu-scansnap-home" do
  version "2.1.0"
  sha256 "3b293ca40d38910393153f26705499c2b966dbaaeed252d15625b582311fb332"

  url "https://origin.pfultd.com/downloads/ss/sshinst/m-#{version.no_dots}/MacSSHOfflineInstaller_#{version.dots_to_underscores}.dmg",
      verified: "origin.pfultd.com/"
  name "ScanSnap Home"
  homepage "https://www.fujitsu.com/global/products/computing/peripheral/scanners/scansnap/software/sshome/index.html"

  depends_on macos: ">= :sierra"
  container nested: "Download/MacSSHomeInstaller_#{version.dots_to_underscores}.dmg"

  pkg "ScanSnap Home.pkg"

  uninstall launchctl: [
    "com.fujitsu.pfu.SshRegister",
    "com.fujitsu.pfu.SshResident",
    "com.fujitsu.pfu.SshSCloudWatch",
  ],
            quit:      [
              "com.fujitsu.pfu.SSMenuBar",
              "com.fujitsu.pfu.Ssh*",
            ],
            pkgutil:   "com.fujitsu.pfu.scansnap.Home.*"
end
