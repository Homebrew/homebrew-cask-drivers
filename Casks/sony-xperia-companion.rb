cask "sony-xperia-companion" do
  version "2.18.7"
  sha256 :no_check

  url "https://dl-desktop-xcapps.sonymobile.com/Software%20Downloads/Xperia%20Companion/XperiaCompanion.dmg"
  name "Xperia™ Companion"
  desc "Companion software for Sony Xperia phones"
  homepage "https://www.sony.com/electronics/support/articles/00236877"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :el_capitan"

  app "Xperia Companion.app"

  uninstall quit: "com.sonymobile.Xperia-Companion*"

  zap trash: [
    "~/Library/Application Support/com.sonymobile.Xperia-Companion",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.sonymobile.Xperia-Companion",
    "~/Library/Caches/com.sonymobile.Xperia-Companion",
    "~/Library/Caches/com.sonymobile.Xperia-Companion-Agent",
    "~/Library/Preferences/com.sonymobile.Xperia-Companion-Agent.plist",
    "~/Library/Preferences/com.sonymobile.Xperia-Companion-Helper.plist",
    "~/Library/Preferences/com.sonymobile.Xperia-Companion.plist",
    "~/Library/Saved Application State/com.sonymobile.Xperia-Companion.savedState",
  ]
end
