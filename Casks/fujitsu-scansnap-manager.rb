cask "fujitsu-scansnap-manager" do
  version "7.2L60"
  sha256 "3bc4328c5228e008ee19ff5f031e4801343591030485d1d79c82ee12b1db35c7"

  url "https://origin.pfultd.com/downloads/IMAGE/driver/ss/inst/ix1500/m-software/MacManagerV#{version.no_dots}WW.dmg",
      verified: "origin.pfultd.com/"
  name "ScanSnap Manager for Mac"
  desc "Scan software for Fujitsu document scanners"
  homepage "https://scansnap.fujitsu.com/"

  livecheck do
    url "https://scansnap.fujitsu.com/global/dl/mac-ssinst2-list.html"
    regex(/ScanSnap\sManager\sV?(\d+(?:.\d+)+)/i)
  end

  pkg "ScanSnap Manager.pkg"

  uninstall quit:    "jp.co.pfu.ScanSnap.V10L10",
            pkgutil: "jp.co.pfu.ScanSnap*"
end
