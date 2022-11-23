cask "yubico-authenticator" do
  version "6.0.0"
  sha256 "dab83aa0ada36272308d2c3e5441ab62ae4db3e74ef0b6b687c1405cdef62599"

  url "https://developers.yubico.com/yubioath-flutter/Releases/yubico-authenticator-#{version}-mac.dmg"
  name "Yubico Authenticator"
  desc "Application for generating TOTP and HOTP codes"
  homepage "https://developers.yubico.com/yubioath-desktop/"

  livecheck do
    url "https://developers.yubico.com/yubioath-flutter/Releases/"
    regex(/href=.*?yubioath-authenticator-(\d+(\.\d+)*[a-z]?)-mac\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "Yubico Authenticator.app"

  zap trash: [
      "~/Library/Containers/com.yubico.authenticator",
      "~/Library/Application Scripts/com.yubico.authenticator",
  ]
end
