cask "bluos-controller" do
  version "3.20.5,2023,02"
  sha256 "a74ba6c354df82753f8550cc24bec31f8ae50459a2e18cf9fd67db445d891e4f"

  url "https://content-bluesound-com.s3.amazonaws.com/uploads/#{version.csv.second}/#{version.csv.third}/BluOS-Controller-#{version.csv.first}.dmg",
      verified: "content-bluesound-com.s3.amazonaws.com/uploads/"
  name "BluOS Controller"
  desc "Manage audio systems"
  homepage "https://www.bluesound.com/"

  livecheck do
    url "https://www.bluesound.com/downloads"
    strategy :page_match do |page|
      match = page.match(%r{uploads/(\d+)/(\d+)/BluOS[._-]Controller[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
      next if match.blank?

      "#{match[3]},#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "BluOS Controller.app"

  zap trash: [
    "~/Library/Application Support/BluOS Controller",
    "~/Library/Logs/BluOS Controller",
    "~/Library/Preferences/com.bluesound.bluos.plist",
    "~/Library/Saved Application State/com.bluesound.bluos.savedState",
  ]
end
