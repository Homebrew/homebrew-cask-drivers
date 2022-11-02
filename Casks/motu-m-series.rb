cask "motu-m-series" do
  version "92136"
  sha256 "89d377f65619e929b11c71a6483dd62429cfa831cec609ad32e1fa08de3297ce"

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
