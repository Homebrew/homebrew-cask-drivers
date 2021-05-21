cask "yubico-yubikey-manager" do
  version "1.2.3"
  sha256 "637145d14c98ee427b77bb32c7d05c6804d1775a03e84b982aa9775a8473b527"

  url "https://developers.yubico.com/yubikey-manager-qt/Releases/yubikey-manager-qt-#{version}-mac.pkg"
  name "Yubikey Manager"
  desc "Application for configuring any YubiKey"
  homepage "https://developers.yubico.com/yubikey-manager-qt/"

  livecheck do
    url "https://developers.yubico.com/yubikey-manager-qt/Releases/"
    regex(/href=.*?yubikey[._-]manager[._-]qt[._-]v?(\d+(?:\.\d+)+[a-z]?)[._-]mac\.pkg/i)
  end

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
