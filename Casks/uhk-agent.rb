cask 'uhk-agent' do
  version '1.5.0'
  sha256 'e3f95c978957ebf6b64fe53222cab1e36005823b6e967f8f0d76554553b77bd8'

  url "https://github.com/UltimateHackingKeyboard/agent/releases/download/v#{version}/UHK.Agent-#{version}-mac.dmg"
  appcast 'https://github.com/UltimateHackingKeyboard/agent/releases.atom'
  name 'Ultimate Hacking Keyboard Agent'
  name 'UHK Agent'
  homepage 'https://github.com/UltimateHackingKeyboard/agent'

  app 'UHK Agent.app'

  uninstall quit: 'com.ultimategadgetlabs.agent'

  zap trash: [
               '~/Library/Application Support/uhk-agent',
               '~/Library/Logs/UHK Agent',
               '~/Library/Logs/uhk-agent',
               '~/Library/Preferences/com.ultimategadgetlabs.agent.helper.plist',
               '~/Library/Preferences/com.ultimategadgetlabs.agent.plist',
               '~/Library/Saved Application State/com.ultimategadgetlabs.agent.savedState',
             ]
end
