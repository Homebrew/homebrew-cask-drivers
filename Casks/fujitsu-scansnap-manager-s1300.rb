cask "fujitsu-scansnap-manager-s1300" do
  version "3.2L31"
  sha256 :no_check

  url "https://www.fujitsu.com/downloads/IMAGE/driver/ss/mgr/m-s1300/ScanSnap.dmg"
  name "ScanSnap Manager for Fujitsu ScanSnap S1300"
  homepage "https://www.fujitsu.com/global/support/products/computing/peripheral/scanners/scansnap/software/"

  pkg "Scansnap Manager.pkg"

  uninstall pkgutil: "jp.co.pfu.ScanSnap.V10L10"

  caveats do
    discontinued
  end
end
