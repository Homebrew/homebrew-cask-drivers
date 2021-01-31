cask "uhk-agent" do
  version "1.5.8"
  sha256 "f92a6fa2c55d8c641667b346677ef58bf5eb674d7248e4041d273e05109aa03f"

  url "https://github.com/UltimateHackingKeyboard/agent/releases/download/v#{version}/UHK.Agent-#{version}-mac.dmg"
  appcast "https://github.com/UltimateHackingKeyboard/agent/releases.atom"
  name "Ultimate Hacking Keyboard Agent"
  name "UHK Agent"
  homepage "https://github.com/UltimateHackingKeyboard/agent"

  app "UHK Agent.app"

  uninstall quit: "com.ultimategadgetlabs.agent"

  zap trash: [
    "~/Library/Application Support/uhk-agent",
    "~/Library/Logs/UHK Agent",
    "~/Library/Logs/uhk-agent",
    "~/Library/Preferences/com.ultimategadgetlabs.agent.helper.plist",
    "~/Library/Preferences/com.ultimategadgetlabs.agent.plist",
    "~/Library/Saved Application State/com.ultimategadgetlabs.agent.savedState",
  ]
end
