cask "fujitsu-scansnap-home" do
  version "1.9.1"
  sha256 "f564193b63a452422b6c6f52c52dd2d106e9ac35e13cb3254a829d69a216dc2e"

  # origin.pfultd.com/ was verified as official when first introduced to the cask
  url "https://origin.pfultd.com/downloads/ss/sshinst/m-#{version.no_dots}/MacSSHOfflineInstaller_#{version.dots_to_underscores}.dmg"
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
