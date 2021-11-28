cask "fujifilm-x-raw-studio" do
  version "1.14.0,nupc0929"
  sha256 "02a98c0ba981fbbd50839e8b4e368f66f83cfaefc446f627d35826620379554a"

  url "https://dl.fujifilm-x.com/support/software/x-raw-studio-mac#{version.before_comma.no_dots}-#{version.after_comma}/XRawStudio#{version.before_comma.no_dots}.dmg"
  appcast "https://fujifilm-x.com/en-us/support/download/software/x-raw-studio/"
  name "FUJIFILM X RAW STUDIO"
  desc "Connect to Fujifilm cameras to extract and convert RAW files the way you want"
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
