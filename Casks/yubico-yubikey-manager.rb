cask "yubico-yubikey-manager" do
  version "1.2.2"
  sha256 "ebabe67c5b843bb05b69f6cba2fd29f4d387fe652417cada4424c11620472d7b"

  url "https://developers.yubico.com/yubikey-manager-qt/Releases/yubikey-manager-qt-#{version}-mac.pkg"
  name "Yubikey Manager"
  desc "Application for configuring any YubiKey"
  homepage "https://developers.yubico.com/yubikey-manager-qt/"

  livecheck do
    url "https://developers.yubico.com/yubikey-manager-qt/Releases/"
    strategy :page_match
    regex(/href=.*?yubikey-manager-qt-(\d+(?:\.\d+)*[a-z]?)-mac\.pkg/i)
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
