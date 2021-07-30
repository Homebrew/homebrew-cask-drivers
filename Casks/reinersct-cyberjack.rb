cask "reinersct-cyberjack" do
  version "3.99.5final.SP14"
  sha256 "16c3628c7bd74617308caafc063517cfa8739d99ce0ea2159be125e1399e344c"

  url "https://support.reiner-sct.de/downloads/MAC/pcsc-cyberjack_#{version}-arm64-signed.pkg"
  name "reinersct-cyberjack"
  desc "Driver for smartcard readers by REINER SCT"
  homepage "https://reiner-sct.de/"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  pkg "pcsc-cyberjack_#{version}.pkg"

  uninstall pkgutil: "com.reiner-sct.mac.cyberjack"
end
