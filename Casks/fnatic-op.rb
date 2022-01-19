cask "fnatic-op" do
  version "0.0.49"
  sha256 :no_check

  url "https://op-releases.tools.fnatic.io/download/macos",
      verified: "op-releases.tools.fnatic.io/download/"
  name "Fnatic OP"
  desc "Customize your FNATICGEAR devices"
  homepage "https://fnatic.com/gear/op"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Fnatic OP.app"

  uninstall quit: "com.fnatic.FnaticOP"

  zap trash: [
    "~/Library/Application Support/fnaticop",
    "~/Library/Caches/com.fnatic.FnaticOP*",
    "~/Library/Logs/Fnatic OP",
    "~/Library/Preferences/com.fnatic.FnaticOP.helper.plist",
    "~/Library/Preferences/com.fnatic.FnaticOP.plist",
    "~/Library/Saved Application State/com.fnatic.FnaticOP.savedState",
  ]
end
