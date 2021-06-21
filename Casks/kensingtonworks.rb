cask "kensingtonworks" do
  version "2.2.10"
  sha256 "b3b8190703272e9cb4c1d27b165a63227a4f16a33ff5b130ab15f51a6eb95d66"

  url "https://www.kensington.com/siteassets/software-support/kensingtonworks/new-kensingtonworks-download/kensingtonworks_#{version}.pkg"
  name "KensingtonWorks"
  desc "Software to personalize Kensington trackballs, mice, and presenters"
  homepage "https://www.kensington.com/software/kensingtonworks/"

  livecheck do
    url :homepage
    regex(/href=.*?kensingtonworks[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  conflicts_with cask: "homebrew/cask-drivers/kensington-trackball-works"
  depends_on macos: ">= :sierra"

  pkg "kensingtonworks_#{version}.pkg"

  uninstall launchctl: "com.kensington.trackballworks",
            quit:      [
              "com.kensington.kensingtonworks2.app",
              "com.kensington.kensingtonworks2.helper2",
              "com.kensington.tbwDKDriver",
              "com.kensington.tbwdkmanager",
            ],
            kext:      "/Library/Extensions/trackballworks2.kext",
            pkgutil:   [
              "com.kensington.trackballworks2",
              "com.kensington.trackballworks2.installer",
            ]

  zap trash: [
    "/Library/Application Support/Kensington",
    "~/Library/Application Support/KensingtonWorks",
    "~/Library/Logs/KensingtonWorks",
  ]

  caveats do
    reboot
  end
end
