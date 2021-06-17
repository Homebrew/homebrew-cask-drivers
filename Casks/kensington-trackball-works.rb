cask "kensington-trackball-works" do
  version "2.2.10"
  sha256 "b3b8190703272e9cb4c1d27b165a63227a4f16a33ff5b130ab15f51a6eb95d66"

  url "https://www.kensington.com/siteassets/software-support/kensingtonworks/new-kensingtonworks-download/kensingtonworks_#{version}.pkg"
  name "Kensington TrackballWorks"
  homepage "https://www.kensington.com/"

  pkg "Kensington TrackballWorks.pkg"

  uninstall launchctl: [
    "com.kensington.slimblade.agent",
    "com.kensington.slimblade.guiagent.plist",
  ],
            quit:      "com.kensington.trackballworks.helper",
            kext:      "com.kensington.trackballworks.driver",
            pkgutil:   "com.kensington.trackballworks.driver.installer"
end
