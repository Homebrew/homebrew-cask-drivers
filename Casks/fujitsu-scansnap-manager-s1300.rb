cask "fujitsu-scansnap-manager-s1300" do
  version "3.2L31"
  sha256 :no_check

  url "https://www.fujitsu.com/downloads/IMAGE/driver/ss/mgr/m-s1300/ScanSnap.dmg"
  name "ScanSnap Manager for Fujitsu ScanSnap S1300"
  homepage "https://www.fujitsu.com/global/support/products/computing/peripheral/scanners/scansnap/software/"

  pkg "Scansnap Manager.pkg"

  uninstall pkgutil: "jp.co.pfu.ScanSnap.V10L10"

  caveats <<~EOS
    This version of ScanSnap Manager (v3.2L31) is not compatible with
    macOS Sierra 10.12. Once installed launch ScanSnap Manager and click
    Help->Online Update... to upgrade to a compatible version.
  EOS
end
