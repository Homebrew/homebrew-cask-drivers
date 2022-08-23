cask "reinersct-cyberjack" do
  arch arm: "arm64", intel: "x86_64"

  version "3.99.5final.SP15"
  sha256 arm:   "bea7c3ae2e146b9216b805e611507bfa614c0c768c1206a53c07b6e7c33c7836",
         intel: "721c0cf3f82d863acd5c070b58961dcd890a035dd339563a5959b5f124d75820"

  url "https://support.reiner-sct.de/downloads/MAC/pcsc-cyberjack_#{version}-#{arch}-signed.pkg"
  name "reinersct-cyberjack"
  desc "Driver for smartcard readers by REINER SCT"
  homepage "https://reiner-sct.de/"

  livecheck do
    url "https://www.reiner-sct.de/support/support-anfrage/?productGroup=77304735&product=77304820&q=driver&os=macOS"
    regex(/href=.*?pcsc[._-]cyberjack[._-]v?(\d+(?:\.[\dA-z]+)+)[._-]#{arch}[._-]signed\.pkg/i)
  end

  depends_on macos: ">= :high_sierra"

  pkg "pcsc-cyberjack_#{version}-#{arch}-signed.pkg"

  uninstall pkgutil: "com.reiner-sct.mac.cyberjack"
end
