cask "yubico-yubikey-piv-manager" do
  version "1.4.2h"
  sha256 "579d1c92a9de556c829c05995a7f495c7f7d320fe7d9287d278688f8c04e8ce3"

  url "https://developers.yubico.com/yubikey-piv-manager/Releases/yubikey-piv-manager-#{version}-mac.pkg"
  name "YubiKey PIV Manager"
  desc "Application for configuring a PIV-enabled YubiKey"
  homepage "https://developers.yubico.com/yubikey-piv-manager/"

  livecheck do
    url "https://developers.yubico.com/yubikey-piv-manager/Releases/"
    strategy :page_match
    regex(/href=.*?yubikey-piv-manager-(\d+(?:\.\d+)*[a-z]?)-mac\.pkg/i)
  end

  pkg "yubikey-piv-manager-#{version}-mac.pkg"

  uninstall signal:  ["TERM", "YubiKey PIV Manager"],
            pkgutil: "YubiKey PIV Manager"

  zap trash: "~/Library/Saved Application State/YubiKey PIV Manager.savedState"
end
