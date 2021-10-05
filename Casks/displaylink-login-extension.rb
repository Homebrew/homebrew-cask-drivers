cask "displaylink-login-extension" do
  version "2021-02"
  sha256 "2ca0b8d0c04b7131e8877f8e5b95b177b48d1ba57aff67ccb22e28720c79c08f"

  url "https://synaptics.com/sites/default/files/exe_files/#{version}/macOS%20App%20LoginExtension-EXE.dmg",
      verified: "synaptics.com/"
  name "DisplayLink Login Screen Extension"
  desc "Enables DisplayLink screens prior to login"
  homepage "https://support.displaylink.com/knowledgebase/articles/1932214-displaylink-manager-app-for-macos-introduction-in#other"

  livecheck do
    skip "No version information available"
  end

  depends_on cask: "displaylink"

  pkg "DisplayLinkLoginScreenExtension.pkg"

  uninstall pkgutil:   "com.displaylink.displaylinkloginscreenext",
            launchctl: "com.displaylink.loginscreen"
end
