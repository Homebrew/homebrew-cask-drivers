cask "calibrite-ccprofiler" do
  version "1.1.4"
  sha256 "81860f4b9c2885a2494a4cb2a8f5563d6925635fd1bc365356f6d180c84fb3e4"

  url "https://downloads.xrite.com/Downloads/Software/ccProfiler/v#{version}/mac/ccProfiler.zip",
      verified: "downloads.xrite.com/Downloads/Software/ccProfiler/"
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
    "com.calibrite.ccprofiler.pkg",
    "com.xrite.xritedeviceservices.installer.pkg",
  ]

  caveats do
    reboot
  end
end
