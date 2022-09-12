cask "fujitsu-scansnap-manager" do
  version "7.2L50"
  sha256 "82142858b9734ed61b7f5d816737502c565e37e61fd5f11fef0145e84c122fd7"

  url "https://origin.pfultd.com/downloads/IMAGE/driver/ss/inst/ix1500/m-software/MacManagerV#{version.no_dots}WW.dmg",
      verified: "origin.pfultd.com/"
  name "ScanSnap Manager for Mac"
  desc "Scan software for Fujitsu document scanners"
  homepage "https://scansnap.fujitsu.com/"

  pkg "ScanSnap Manager.pkg"

  uninstall quit:    "jp.co.pfu.ScanSnap.V10L10",
            pkgutil: "jp.co.pfu.ScanSnap*"
end
