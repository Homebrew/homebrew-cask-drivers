cask "razer-synapse" do
  version "1.87"
  sha256 "a00fbbf1b4bb71717c1b552caf4465e16c715bc18a7e7160b4d046ba0ab5e0f4"

  url "https://dl.razerzone.com/drivers/Synapse2/mac/Razer_Synapse_Mac_Driver_v#{version.major_minor}.dmg",
      verified: "dl.razerzone.com/drivers/Synapse2/mac/"
  name "Razer Synapse"
  desc "Configuration software for Razer peripherals"
  homepage "https://www.razer.com/synapse-2"

  livecheck do
    url "https://rzr.to/synapse-mac-download"
    regex(/Razer[._-]Synapse[._-]Mac[._-]Driver[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :header_match
  end

  depends_on macos: "<= :mojave"

  pkg "Razer Synapse.pkg"

  uninstall delete:    "/Applications/Razer Synapse.app",
            launchctl: [
              "com.razer.rzupdater",
              "com.razerzone.rzdeviceengine",
            ],
            pkgutil:   "com.razerzone.*",
            quit:      [
              "com.razerzone.RzUpdater",
              "com.razerzone.rzdeviceengine",
            ]

  zap trash: [
    "/Library/Application Support/Razer",
    "~/Library/Preferences/com.razer.*",
    "~/Library/Preferences/com.razerzone.*",
  ]

  caveats do
    reboot
  end
end
