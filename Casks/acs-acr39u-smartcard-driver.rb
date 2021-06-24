cask "acs-acr39u-smartcard-driver" do
  version "1.1.8.2,12835"
  sha256 "adf059f1963b6d2419ac0904b87ca9d92d72b81a6911439eff577c6ba42ad4ca"

  url "https://www.acs.com.hk/download-driver-unified/#{version.after_comma}/ACS-Unified-INST-MacOSX-#{version.before_comma.no_dots}-P.zip"
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
