cask "reolink-client" do
  version "8.8.5,2023,03,170224401679019880,5577"
  sha256 :no_check

  url "https://home-cdn.reolink.us/wp-content/uploads/#{version.csv.second}/#{version.csv.third}/#{version.csv.fourth}.#{version.csv.fifth}.dmg",
      verified: "home-cdn.reolink.us/"
  name "Reolink Client"
  desc "Security camera system surveillance software"
  homepage "https://reolink.com/software-and-manual/"

  livecheck do
    url "https://reolink.com/wp-json/reo-v2/download/?lang=en&type=clients&viaReoAPI=true&lang=en"
    strategy :page_match do |page|
      download = JSON.parse(page)["data"]["downloads"].find { |d| d["type"] == "mac_client" }
      match = download["url"].match(%r{/(\d+)/(\d+)/(\d+)\.(\d+)\.dmg}i)
      "#{download["version"]},#{match[1]},#{match[2]},#{match[3]},#{match[4]}"
    end
  end

  app "Reolink.app"

  uninstall quit:   "com.reolink.client",
            delete: "/Library/Logs/DiagnosticReports/Reolink Client_*.wakeups_resource.diag"

  zap trash: [
    "~/Library/Application Support/Reolink Client",
    "~/Library/Preferences/com.reolink.client.plist",
    "~/Library/Saved Application State/com.reolink.client.savedState",
  ]
end
