cask "elektron-overbridge" do
  version "2.0.44.3,07287f11-0b57-54d7-a34a-5e2dc608f04e"
  sha256 "334d2510b3c03da36312d8ed4eeff74bc22b472bab702b5c68bba706aa8fb8c5"

  url "https://se-elektron-devops.s3.amazonaws.com/release/#{version.after_comma}/Elektron_Overbridge_#{version.before_comma}.dmg",
      verified: "se-elektron-devops.s3.amazonaws.com/"
  appcast "https://www.elektron.se/support/?connection=overbridge#resources"
  name "Overbridge"
  homepage "https://www.elektron.se/overbridge/"

  depends_on macos: ">= :sierra"

  pkg "Elektron Overbridge Installer #{version.before_comma}.pkg"

  uninstall quit:      "se.elektron.OverbridgeEngine",
            pkgutil:   "se.elektron.overbridge.*",
            launchctl: "se.elektron.overbridge.engine",
            delete:    "/Applications/Elektron"
end
