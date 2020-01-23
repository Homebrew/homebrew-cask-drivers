cask 'uhk-agent' do
  version '1.3.2'
  sha256 'c9ac4865f4812fceb54b15c7a58e2d4460dac8b5e8240f7f54e7576faa27d367'

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
