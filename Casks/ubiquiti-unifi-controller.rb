cask "ubiquiti-unifi-controller" do
  version "6.0.45"
  sha256 "8ef5a47fed81daebf4e197ca41a998f65c286ab8fd21f74332c038a753271ab0"

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg",
      verified: "dl.ubnt.com/"
  appcast "https://www.ui.com/download/unifi",
          must_contain: :no_check
  name "Ubiquiti UniFi Network Controller"
  homepage "https://unifi-sdn.ui.com/"

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
