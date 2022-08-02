cask "acs-acr39u-smartcard-driver" do
  version "1.1.8.3,13030"
  sha256 "ac0889edc143a85061172d53594a3c6b18e20348bd6867abb93822e1854f773e"

  url "https://www.acs.com.hk/download-driver-unified/#{version.csv.second}/ACS-Unified-INST-MacOSX-#{version.csv.first.no_dots}-P.zip",
      user_agent: :fake
  name "ACS Unified Installer"
  desc "PC/SC driver for ACR39U smart card reader"
  homepage "https://www.acs.com.hk/en/driver/302/acr39u-smart-card-reader/"

  livecheck do
    url :homepage
    regex(%r{href=["']?[^"' >]*?/(\d+)/ACS-Unified-INST-MacOSX-(\d+)-P\.zip.*?Version\s*(\d+(?:\.\d+)+)}im)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2]},#{match[0]}" if match[1] == match[2].tr(".", "")
      end.compact
    end
  end

  container nested: "acsccid_installer-#{version.before_comma}.dmg"

  pkg "acsccid_installer.pkg"

  uninstall pkgutil: "com.acs.acsccid"
end
