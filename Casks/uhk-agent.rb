cask "uhk-agent" do
  version "1.5.5"
  sha256 "84d6abcfd023b7869e859bea8d4c009f6e67707aa07411bcf7058467b0b300d1"

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
