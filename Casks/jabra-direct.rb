cask "jabra-direct" do
  version "4.14.15119"
  sha256 "f592ec4f7a963d67f5641e0ef778f0a69132c209af3212dbdb518e85f55c4183"

  url "https://jabraxpressonlineprdstor.blob.core.windows.net/jdo/JabraDirectSetup.dmg",
      verified: "jabraxpressonlineprdstor.blob.core.windows.net/jdo/"
  appcast "https://jabraexpressonlinejdo.jabra.com/jdo/jdo.json"
  name "Jabra Direct"
  desc "Optimise and personalise your Jabra headset"
  homepage "https://www.jabra.com/software-and-services/jabra-direct"

  pkg "JabraDirectSetup.pkg"

  uninstall quit:       [
    "com.jabra.Avaya3Driver",
    "com.jabra.AvayaDriver",
    "com.jabra.BriaDriver",
    "com.jabra.directonline",
    "com.jabra.softphoneService",
    "nl.superalloy.oss.terminal-notifier",
  ],
            delete:     "/Applications/Jabra Direct.app",
            login_item: "Jabra Direct",
            pkgutil:    [
              "com.jabra.directonline",
              "com.jabra.kext",
            ]

  zap trash: [
    "~/Library/Application Support/Jabra",
    "~/Library/Application Support/Jabra Direct",
    "~/Library/Application Support/JabraSDK",
    "~/Library/Logs/Jabra Direct",
    "~/Library/Preferences/com.jabra.directonline.helper.plist",
    "~/Library/Preferences/com.jabra.directonline.plist",
    "~/Library/Preferences/com.jabra.prefsettings.plist",
    "~/Library/Saved Application State/com.jabra.directonline.savedState",
  ]
end
