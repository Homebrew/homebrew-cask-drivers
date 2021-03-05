cask "acs-acr39u-smartcard-driver" do
  version "1.1.8.2"
  sha256 "adf059f1963b6d2419ac0904b87ca9d92d72b81a6911439eff577c6ba42ad4ca"

  url "https://www.acs.com.hk/download-driver-unified/11878/ACS-Unified-INST-MacOSX-#{version.no_dots}-P.zip"
  appcast "https://www.acs.com.hk/en/driver/302/acr39u-smart-card-reader/"
  name "ACS Unified Installer"
  homepage "https://www.acs.com.hk/en/driver/302/acr39u-smart-card-reader/"

  container nested: "ACS-Unified-INST-MacOSX-#{version.no_dots}-P/acsccid_installer-#{version}.dmg"

  pkg "acsccid_installer.pkg"

  uninstall pkgutil: "com.acs.acsccid"
end
