cask "uhk-agent" do
  version "1.5.1"
  sha256 "51ea09f1e8cf5136565c3df3e5bc9b0ffeafdb961e4692dcd1b0775d12b995a1"

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
