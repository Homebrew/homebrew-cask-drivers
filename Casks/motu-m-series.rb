cask "motu-m-series" do
  version "92621"
  sha256 "45675d1b0813854dd443ee63f418303a7a6b065a2da328b8477251dd10fd64b8"

  url "https://cdn-data.motu.com/downloads/audio/mseries/driver/RC/MOTU%20M%20Series%20Installer%20(#{version}).pkg"
  name "MOTU M Series Installer"
  desc "Install MOTU M2 and M4 system extension"
  homepage "https://motu.com/en-us/download/product/408/"

  livecheck do
    url :homepage
    regex(/Mac\sv?(\d+)/i)
  end

  pkg "MOTU M Series Installer (#{version}).pkg"

  uninstall pkgutil:   [
              "com.motu.pkg.mseries",
              "com.motu.pkg.mseries.bigsur",
            ],
            launchctl: "com.motu.coreuac.reenumerator"
end
