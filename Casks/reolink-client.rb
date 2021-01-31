cask "reolink-client" do
  version "3.5.6.55"
  sha256 :no_check

  url "https://cdn.reolink.com/files/client/Mac-ReolinkClient.zip"
  appcast "https://cdn.reolink.com/wp-content/uploads/2018/02/shipping.js"
  name "Reolink Client"
  homepage "https://reolink.com/software-and-manual/"

  app "Reolink Client.app"

  uninstall quit:   "com.reolink.client",
            delete: "/Library/Logs/DiagnosticReports/Reolink Client_*.wakeups_resource.diag"

  zap trash: [
    "~/Library/Application Support/Reolink Client",
    "~/Library/Preferences/com.reolink.client.plist",
    "~/Library/Saved Application State/com.reolink.client.savedState",
  ]
end
