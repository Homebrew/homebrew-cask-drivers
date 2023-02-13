cask "motu-m-series" do
  version "92737"
  sha256 "5469d64fb416aefce5afd0e95bc972273a7b4b39ad778adcb4e721397158d4e2"

  url "https://cdn-data.motu.com/downloads/audio/mseries/driver/RC/MOTU%20MSeries%20Installer%20(#{version}).pkg"
  name "MOTU M Series Installer"
  desc "Install MOTU M2 and M4 system extension"
  homepage "https://motu.com/en-us/download/product/408/"

  livecheck do
    url :homepage
    regex(/Mac\sv?(\d+)/i)
  end

  pkg "MOTU MSeries Installer (#{version}).pkg"

  uninstall pkgutil:   [
              "com.motu.pkg.mseries",
              "com.motu.pkg.mseries.bigsur",
            ],
            launchctl: "com.motu.coreuac.reenumerator"
end
