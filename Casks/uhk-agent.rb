cask "uhk-agent" do
  version "1.5.7"
  sha256 "79550a2d288ff8f24e2f13d84155323c11e39bcb0ceda14ac08a0c0d49995920"

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
