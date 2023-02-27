cask "calibrite-ccprofiler" do
  version "1.1.3"
  sha256 "409f7ff15f70fc3db8ae898c40d76bf5d84aa7141ff6c15a991818106133dc79"

  url "https://downloads.xrite.com/Downloads/Software/ccProfiler/v#{version}/mac/ccProfiler.zip",
      verified: "xrite.com"
  name "ccProfiler"
  desc "Monitor calibration for Calibrite ColorChecker Display Pro & Plus"
  homepage "https://calibrite.com/"

  livecheck do
    url "https://calibrite.com/us/software-downloads/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/mac/ccProfiler\.zip}i)
  end

  depends_on macos: ">= :catalina"

  pkg "ccProfiler.pkg"

  uninstall pkgutil: [
    "com.xrite.xritedeviceservices.installer.pkg",
    "com.calibrite.ccprofiler.pkg",
  ]

  caveats do
    reboot
  end
end
