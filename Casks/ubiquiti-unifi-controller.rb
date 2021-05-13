cask "ubiquiti-unifi-controller" do
  version "6.1.71"
  sha256 "02043547d321095de6bb4ce6bdf42c9535ef342a7963d9faa2ee7ec9c63bb355"

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg",
      verified: "dl.ubnt.com/"
  name "Ubiquiti UniFi Network Controller"
  desc "Set up, configure, manage and analyze your UniFi network"
  homepage "https://unifi-sdn.ui.com/"

  livecheck do
    url "https://fw-update.ubnt.com/api/firmware-latest?filter=eq~~product~~unifi-controller&filter=eq~~channel~~release&filter=eq~~platform~~macos"
    regex(/"version"\s*:\s*"v?(\d+(?:\.\d+)+)/i)
  end

  conflicts_with cask: "ubiquiti-unifi-controller-lts"

  pkg "UniFi.pkg"

  postflight do
    set_ownership "~/Library/Application Support/UniFi"
  end

  uninstall quit:    [
    "com.oracle.java.*.jre",
    "com.ubnt.UniFi-Discover",
  ],
            signal:  ["TERM", "com.ubnt.UniFi"],
            pkgutil: "com.ubnt.UniFi",
            delete:  [
              "/Applications/UniFi-Discover.app",
              "/Applications/UniFi.app",
            ]

  zap trash: [
    "~/Library/Application Support/UniFi",
    "~/Library/Saved Application State/com.ubnt.UniFi-Discover.savedState",
    "~/Library/Saved Application State/com.ubnt.UniFi.savedState",
  ]

  caveats do
    depends_on_java "8"
    license "https://www.ui.com/eula/"
  end
end
