cask "fujifilm-x-raw-studio" do
  version "1140,nupc0929"
  sha256 "02a98c0ba981fbbd50839e8b4e368f66f83cfaefc446f627d35826620379554a"

  url "https://dl.fujifilm-x.com/support/software/x-raw-studio-mac#{version.csv.first}-#{version.csv.second}/XRawStudio#{version.csv.first}.dmg"
  name "FUJIFILM X RAW STUDIO"
  desc "Connect to Fujifilm cameras to extract and convert RAW files the way you want"
  homepage "https://fujifilm-x.com/en-us/support/download/software/x-raw-studio/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{x[._-]raw[._-]studio[._-]macv?(\d*)[._-](.*)/XRawStudio(\d*)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "FUJIFILM X RAW STUDIO.app"

  uninstall quit: "com.fujifilm.denji.X-RAW-STUDIO"

  zap trash: [
    "~/Library/Application Support/com.fujifilm.denji",
    "~/Library/Preferences/com.fujifilm.denji.X-RAW-STUDIO.plist",
    "~/Library/Saved Application State/com.fujifilm.denji.X-RAW-STUDIO.savedState",
  ]
end
