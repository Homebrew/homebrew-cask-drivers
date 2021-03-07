cask "yubico-yubikey-manager" do
  version "1.1.5b"
  sha256 "84ac768511a488278f766fbd216b8aabfda19cc5c458486b98e292199233ad00"

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
