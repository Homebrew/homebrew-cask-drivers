cask "logitech-g-hub" do
  version :latest
  sha256 :no_check

  url "https://download01.logi.com/web/ftp/pub/techsupport/gaming/lghub_installer.zip",
      verified: "download01.logi.com/"
  name "Logitech G HUB"
  homepage "https://www.logitechg.com/en-us/innovation/g-hub.html"

  installer script: {
    executable: "lghub_installer.app/Contents/MacOS/lghub_installer",
    args:       ["--silent"],
    sudo:       true,
  }

  postflight do
    set_ownership   ["#{appdir}/lghub.app", "/Users/Shared/LGHUB"]
    set_permissions "#{appdir}/lghub.app", "0755"
  end

  uninstall script: {
    executable: "/Applications/lghub.app/Contents/Frameworks/lghub_updater.app/Contents/MacOS/lghub_updater",
    args:       ["--uninstall"],
    sudo:       true,
  },
            trash:  "/Users/Shared/LGHUB"

  zap trash: [
    "~/Library/Application Support/lghub",
    "~/Library/Caches/com.logi.ghub.installer",
    "~/Library/Preferences/com.logi.ghub.plist",
    "~/Library/Saved Application State/com.logi.ghub.savedState",
  ]
end
