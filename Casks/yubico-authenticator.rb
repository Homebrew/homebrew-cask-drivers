cask "yubico-authenticator" do
  version "5.1.0"
  sha256 "f78f65781e2bcdb624607a48082a6de8fa2b5364710552ebcf2c02efc83758c5"

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  name "Yubico Authenticator"
  desc "Application for generating TOTP and HOTP codes"
  homepage "https://developers.yubico.com/yubioath-desktop/"

  livecheck do
    url "https://developers.yubico.com/yubioath-desktop/Releases/"
    regex(/href=.*?yubioath-desktop-(\d+(\.\d+)*[a-z]?)-mac\.pkg/i)
  end

  depends_on macos: ">= :sierra"

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall signal:  ["TERM", "com.yubico.yubioath"],
            pkgutil: "com.yubico.yubioath"

  zap trash: [
        "~/Library/Caches/Yubico/Yubico Authenticator",
        "~/Library/Preferences/com.com-yubico.Yubico Authenticator.plist",
        "~/Library/Saved Application State/com.yubico.yubioath.savedState",
      ],
      rmdir: "~/Library/Caches/Yubico"
end
