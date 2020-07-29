cask "bragi-updater" do
  version "1.1.4"
  sha256 "ab3e12163bf4d73c641c1b249bc7a290d8eeb2034465d243b1e194f4e2f76f94"

  url "https://update.bragi.com/bin/Bragi%20Updater-#{version}.dmg"
  appcast "https://update.bragi.com/scripts/scripts.36513c90.js"
  name "Bragi Updater"
  homepage "https://update.bragi.com/"

  app "Bragi Updater.app"

  uninstall quit: [
    "com.bragi.updater",
    "com.bragi.updater.helper.*",
  ]

  zap trash: [
    "~/Library/Application Support/Bragi-Updater",
    "~/Library/Preferences/com.bragi.updater.helper.plist",
    "~/Library/Preferences/com.bragi.updater.plist",
    "~/Library/Saved Application State/com.bragi.updater.savedState",
  ]
end
