cask "rode-central" do
  version "2.0.14"
  sha256 :no_check

  url "https://edge.rode.com/zip/page/1873/modules/4782/RODE-Central_MACOS%20(#{version}).zip"
  name "Rode Central"
  desc "Configure RØDE device settings, features, functions, and firmware"
  homepage "https://rode.com/software/rode-central"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"

  pkg "RODE-Central_MACOS (#{version})/RODE Central Installer (#{version}).pkg"

  uninstall pkgutil: "com.rodecentral.installer"
end
