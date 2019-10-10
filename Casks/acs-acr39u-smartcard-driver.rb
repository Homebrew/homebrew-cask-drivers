cask 'acs-acr39u-smartcard-driver' do
  version '1.1.6.3'
  sha256 'b3b8e9a3e4393953d2e1671b5baef6953d531599b5977b8a7d2b314d18b2af4a'

  url "https://www.acs.com.hk/download-driver-unified/10954/ACS-Unified-INST-MacOSX-#{version.no_dots}-P.zip"
  appcast 'https://www.acs.com.hk/en/driver/302/acr39u-smart-card-reader/'
  name 'ACS Unified Installer'
  homepage 'https://www.acs.com.hk/en/driver/302/acr39u-smart-card-reader/'

  depends_on macos: '>= :mavericks'
  container nested: "ACS-Unified-INST-MacOSX-#{version.no_dots}-P/acsccid_installer-#{version}.dmg"

  pkg 'acsccid_installer.pkg'

  uninstall pkgutil: 'com.acs.acsccid'
end
