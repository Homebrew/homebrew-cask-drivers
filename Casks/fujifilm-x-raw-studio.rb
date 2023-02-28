cask "fujifilm-x-raw-studio" do
  version "1180,ihw1222x"
  sha256 "87cbdcbd9aa91396a23b5a2efbfab3244104a869e55aa82f5f17b746eecd1556"

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
