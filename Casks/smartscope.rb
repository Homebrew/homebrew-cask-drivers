cask "smartscope" do
  version "0.15.2.0"
  sha256 :no_check

  url "https://www.lab-nation.com/package/smartscope/macos/latest/get"
  appcast "https://www.lab-nation.com/package/smartscope/macos/latest/",
          must_contain: version.minor
  name "SmartScope"
  homepage "https://www.lab-nation.com/"

  depends_on formula: "mono"

  app "SmartScope.app"
  app "SmartScopeServerUI.app"

  uninstall quit: [
    "com.lab-nation.SmartScope",
    "com.lab-nation.SmartScopeServerUI",
  ]

  zap trash: [
    "~/LabNation/smartscope.log",
    "~/Library/Saved Application State/com.lab-nation.SmartScope.savedState",
    "~/Library/Saved Application State/com.lab-nation.SmartScopeServerUI.savedState",
  ]
end
