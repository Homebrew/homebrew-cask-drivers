cask "ubiquiti-unifi-controller" do
  version "6.0.36"
  sha256 "c8d5c283507eeead5d20f6a0df8f8e7d5f00bec8b0bfbcb932f637a713e3344d"

  # dl.ubnt.com/ was verified as official when first introduced to the cask
  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
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
