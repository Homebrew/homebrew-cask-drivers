cask "ubiquiti-unifi-controller-lts" do
  version "5.6.42"
  sha256 "032cefa6a68d83f4f9408bb46a6178e51c9136d2a1ad63433203a29be4c3d607"

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg",
      verified: "dl.ubnt.com/"
  appcast "https://www.ui.com/download/unifi"
  name "Ubiquiti UniFi SDN Controller LTS"
  homepage "https://unifi-sdn.ui.com/"

  conflicts_with cask: "ubiquiti-unifi-controller"

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
    license "https://www.ui.com/eula/"
  end
end
