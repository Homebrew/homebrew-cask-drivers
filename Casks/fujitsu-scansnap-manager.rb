cask "fujitsu-scansnap-manager" do
  version "7.0L30"
  sha256 "4458776ac2d117992fb4010e7d75363261cda5bc9cdf6a4abdc3126f3b0318d1"

  url "https://origin.pfultd.com/downloads/IMAGE/driver/ss/inst/ix1500/m-software/MacManagerV#{version.no_dots}WW.dmg",
      verified: "origin.pfultd.com/"
  name "ScanSnap Manager for Mac"
  desc "Scan software for Fujitsu document scanners"
  homepage "https://scansnap.fujitsu.com/"

  pkg "ScanSnap Manager.pkg"

  uninstall pkgutil: "jp.co.pfu.ScanSnapV#{version.no_dots}WW"
end
