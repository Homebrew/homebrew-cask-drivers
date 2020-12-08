cask "tiptoi-manager" do
  version :latest
  sha256 :no_check

  url "https://tiptoidata.s3-de.object.vdc.interoute.com/installer_flat/tiptoi_Manager_Installer.pkg",
      verified: "tiptoidata.s3-de.object.vdc.interoute.com/"
  name "tiptoi® Manager"
  homepage "https://www.ravensburger.org/nl/ontdek/tiptoi/index.html"

  pkg "tiptoi_Manager_Installer.pkg"

  uninstall quit:    "com.ravensburger.tiptoimanager",
            pkgutil: [
              "com.ravensburger.tiptoimanager",
              "com.ravensburger.tiptoi.TipToiBindings",
            ],
            delete:  "/Applications/tiptoi® Manager.app"

  zap trash: [
    "~/Library/Application Support/com.ravensburger.tiptoimanager",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.ravensburger.tiptoimanager",
    "~/Library/Preferences/com.ravensburger.tiptoimanager.plist",
    "~/Library/Saved Application State/com.ravensburger.tiptoimanager.savedState",
  ]
end
