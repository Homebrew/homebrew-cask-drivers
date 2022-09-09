cask "cardo-update" do
  version "3.6.0.21600"
  sha256 :no_check

  url "https://update.cardosystems.com/cardo-app/cardo_updater_macOS_latest.pkg"
  name "Cardo Update"
  desc "Update your Cardo Communication System"
  homepage "https://www.cardosystems.com/update"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :el_capitan"

  pkg "cardo_updater_macOS_latest.pkg"

  uninstall quit:    "com.cardo.fwupdater",
            pkgutil: "com.cardo.fwupdater",
            delete:  "/Applications/Cardo Update.app"

  zap delete: "~/Library/Application Support/Cardo Update"
end
