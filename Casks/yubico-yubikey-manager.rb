cask "yubico-yubikey-manager" do
  version "1.1.5b"
  sha256 "7b66abdb3daa90428596501a4e733a1714ba3a017f3c09a2fa00304a1afdedaa"

  url "https://developers.yubico.com/yubikey-manager-qt/Releases/yubikey-manager-qt-#{version}-mac.pkg"
  appcast "https://github.com/Yubico/yubikey-manager-qt/releases.atom"
  name "Yubikey Manager"
  homepage "https://developers.yubico.com/yubikey-manager-qt/"

  depends_on macos: ">= :sierra"

  pkg "yubikey-manager-qt-#{version}-mac.pkg"

  uninstall quit:    "com.yubico.ykman",
            pkgutil: "com.yubico.ykman"

  zap trash: [
    "~/Library/Caches/Yubico/YubiKey Manager",
    "~/Library/Preferences/com.org-yubico.YubiKey Manager.plist",
    "~/Library/Saved Application State/com.yubico.ykman.savedState",
  ],
      rmdir: "~/Library/Caches/Yubico"
end
