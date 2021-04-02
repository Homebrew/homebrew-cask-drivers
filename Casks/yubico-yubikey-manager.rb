cask "yubico-yubikey-manager" do
  version "1.2.1"
  sha256 "d794f87c6e9bada9cff1dba2f7e7109496830ac7dcf290d6fb91022d3d579848"

  url "https://developers.yubico.com/yubikey-manager-qt/Releases/yubikey-manager-qt-#{version}-mac.pkg"
  appcast "https://developers.yubico.com/yubikey-manager-qt/Releases/"
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
