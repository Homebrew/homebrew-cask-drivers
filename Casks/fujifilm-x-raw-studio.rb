cask "fujifilm-x-raw-studio" do
  version "1.11.0,kq10gz16"
  sha256 "ac6577b3c6936f49c26a1becf5acff0aae53f0b5beaa6c422661414d03444f33"

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
