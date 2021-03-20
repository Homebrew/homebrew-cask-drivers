cask "yubico-yubikey-manager" do
  version "1.2.0"
  sha256 "64415156f04dfdc356a22c88dfad44e053bf36a431d9d47f3c7fe49eab2b95da"

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
