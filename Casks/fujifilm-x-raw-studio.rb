cask "fujifilm-x-raw-studio" do
  version "1.11.1,f12zkf10"
  sha256 "db24f6fdc4874b6ff84e9f17af90a4424fed39c331091731ad477ce28ff4564e"

  url "https://dl.fujifilm-x.com/support/software/x-raw-studio-mac#{version.before_comma.no_dots}-#{version.after_comma}/XRawStudio#{version.before_comma.no_dots}.dmg"
  appcast "https://fujifilm-x.com/en-us/support/download/software/x-raw-studio/"
  name "FUJIFILM X RAW STUDIO"
  homepage "https://fujifilm-x.com/en-us/support/download/software/x-raw-studio/"

  depends_on macos: ">= :sierra"

  app "FUJIFILM X RAW STUDIO.app"

  uninstall quit: "com.fujifilm.denji.X-RAW-STUDIO"

  zap trash: [
    "~/Library/Application Support/com.fujifilm.denji",
    "~/Library/Preferences/com.fujifilm.denji.X-RAW-STUDIO.plist",
    "~/Library/Saved Application State/com.fujifilm.denji.X-RAW-STUDIO.savedState",
  ]
end
