cask "fujifilm-x-raw-studio" do
  version "1150,sm062q8t"
  sha256 "70174cc963c0430bc633c48fb6030fd61900d4f74b52ace10eb19ec83d8375fa"

  url "https://dl.fujifilm-x.com/support/software/x-raw-studio-mac#{version.csv.first}-#{version.csv.second}/XRawStudio#{version.csv.first}.dmg"
  name "FUJIFILM X RAW STUDIO"
  desc "Connect to Fujifilm cameras to extract and convert RAW files the way you want"
  homepage "https://fujifilm-x.com/en-us/support/download/software/x-raw-studio/"

  livecheck do
    url :homepage
    regex(%r{x[._-]raw[._-]studio[._-]macv?(\d*)[._-](.*)/XRawStudio(\d*)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
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
