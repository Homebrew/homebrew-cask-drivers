cask 'uhk-agent' do
  version '1.4.5'
  sha256 'df1c3cd5355ea4ca6d51e3acb4a2fc1f732a670d109a21d2ab5e524146a461df'

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
