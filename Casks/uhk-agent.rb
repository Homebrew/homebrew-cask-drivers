cask 'uhk-agent' do
  version '1.4.0'
  sha256 'b474f5c7dbff90f16cdbe4cde0254fc881693efd653d9d46c7b4111cb3b10c62'

  url "https://github.com/UltimateHackingKeyboard/agent/releases/download/v#{version}/UHK.Agent-#{version}-mac.#{version}.dmg"
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
