cask "nitrokey" do
  version "1.4"
  sha256 "80f6c95f5fa8320e4e323e1f4c11ac428ad4b731ae186891a4a66c7c056485f0"

  url "https://github.com/Nitrokey/nitrokey-app/releases/download/v#{version}/Nitrokey-App.dmg",
      verified: "github.com/Nitrokey/nitrokey-app/"
  name "Nitrokey App"
  desc "Application to manage Nitro Key devices"
  homepage "https://www.nitrokey.com/download/macos"

  # GitHub releases aren't guaranteed to provide the dmg file we use, so it
  # would be necessary to fetch the assets list for each stable release until
  # we find one with a dmg file. This involves a comparatively large number of
  # requests which will increase with each new release that doesn't include a
  # dmg file, so this approach arguably isn't tenable for us.
  livecheck do
    skip "Requires checking assets for multiple releases"
  end

  app "Nitrokey App v#{version}.app"

  uninstall quit: "com.nitrokey.nitrokey-app"

  zap trash: [
    "~/Library/Preferences/com.nitrokey.Nitrokey App.plist",
    "~/Library/Saved Application State/com.nitrokey.nitrokey-app.savedState",
  ]
end
