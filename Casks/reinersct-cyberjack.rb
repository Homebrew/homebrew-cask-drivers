cask "reinersct-cyberjack" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "3.99.5final.SP15"
    sha256 "721c0cf3f82d863acd5c070b58961dcd890a035dd339563a5959b5f124d75820"
  else
    version "3.99.5final.SP14"
    sha256 "16c3628c7bd74617308caafc063517cfa8739d99ce0ea2159be125e1399e344c"
  end

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
