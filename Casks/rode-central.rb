cask "rode-central" do
  version "1.3.8"
  sha256 :no_check

  url "https://cdn1.rode.com/rodecentral_installation_file_mac.zip"
  name "Rode Central"
  desc "Configure RØDE device settings, features, functions, and firmware"
  homepage "https://rode.com/software/rode-central"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"

  pkg "RODE Central macOS v#{version}/RODE Central Installer.pkg"

  uninstall pkgutil: "com.rodecentral.installer"
end
