cask "uhk-agent" do
  version "1.5.2"
  sha256 "e5d180f8850b960cca25451b674d327c99042db0e8cb76fd8a550bb67bac81e2"

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
