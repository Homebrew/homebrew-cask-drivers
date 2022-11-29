cask "fujitsu-scansnap-manager" do
  version "7.2L51"
  sha256 "f6c172a3f196414cb8ceee85ee93e3b1716dc7678f366675eda6acc65030a28c"

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
