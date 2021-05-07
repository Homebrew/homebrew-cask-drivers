cask "yubico-authenticator" do
  version "5.0.5"
  sha256 "627eb027901a785d1818a556d5b99d84428d57e892b5957326955b70e5dfae89"

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  name "Yubico Authenticator"
  desc "Application for generating TOTP and HOTP codes"
  homepage "https://developers.yubico.com/yubioath-desktop/"

  livecheck do
    url "https://developers.yubico.com/yubioath-desktop/Releases/"
    strategy :page_match
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
