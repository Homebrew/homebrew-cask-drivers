cask "motu-m-series" do
  version "89383"
  sha256 "b4fc567e85baf959dc2387ea96f0fffcac7fa91329ca5e02260762abcf0e9f82"

  url "https://cdn-data.motu.com/downloads/audio/mseries/driver/MW/RC/MOTU%20M%20Series%20Installer%20(#{version}).pkg"
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
