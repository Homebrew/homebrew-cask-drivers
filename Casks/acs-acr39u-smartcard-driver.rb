cask "acs-acr39u-smartcard-driver" do
  version "1.1.8"
  sha256 "f1234d75178d892a133a410355a5a990cf75d2f33eba25d575943d4df632f3a4"

  url "https://www.acs.com.hk/download-driver-unified/11878/ACS-Unified-INST-MacOSX-#{version.no_dots}-P.zip"
  appcast "https://www.acs.com.hk/en/driver/302/acr39u-smart-card-reader/"
  name "ACS Unified Installer"
  homepage "https://www.acs.com.hk/en/driver/302/acr39u-smart-card-reader/"

  container nested: "ACS-Unified-INST-MacOSX-#{version.no_dots}-P/acsccid_installer-#{version}.dmg"

  pkg "acsccid_installer.pkg"

  uninstall pkgutil: "com.acs.acsccid"
end
