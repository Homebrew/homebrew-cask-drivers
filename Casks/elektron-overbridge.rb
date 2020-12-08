cask "elektron-overbridge" do
  version "2.0.41.11,84c1b8b2-2081-5311-8db6-3aa9479a8456"
  sha256 "48a5e9c28cacacc4c8af8e7f511bbfa5af811b3c96fc66e15ffb141681b5fb3b"

  url "https://se-elektron-devops.s3.amazonaws.com/release/#{version.after_comma}/Elektron_Overbridge_#{version.before_comma}.dmg",
      verified: "se-elektron-devops.s3.amazonaws.com/"
  appcast "https://www.elektron.se/support/?connection=overbridge#resources"
  name "Overbridge"
  homepage "https://www.elektron.se/overbridge/"

  depends_on macos: ">= :sierra"

  pkg "Elektron Overbridge Installer #{version.before_comma}.pkg"

  uninstall pkgutil:   "se.elektron.overbridge.*",
            launchctl: "se.elektron.overbridge.engine",
            delete:    "/Applications/Elektron"
end
