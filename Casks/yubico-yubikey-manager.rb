cask "yubico-yubikey-manager" do
  version "1.1.4"
  sha256 "44690a9c6b80c422f46fed8172368c7f01e51218be066107f127095028d43b11"

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
