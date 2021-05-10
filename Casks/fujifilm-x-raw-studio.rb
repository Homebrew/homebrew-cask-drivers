cask "fujifilm-x-raw-studio" do
  version "1.12.0,021aqi7m"
  sha256 "3a8cdb3613d381ebb5ef8f46fa1b110242865d42d444cc2902892698fd89d735"

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
