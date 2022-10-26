cask "displaylink-login-extension" do
  version "2021-02"
  sha256 "67f653f331e2e4d182325ded51a00701879d5f9af3da025684f2889777f6d597"

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
