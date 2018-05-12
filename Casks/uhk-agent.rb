cask 'uhk-agent' do
  version '1.2.1'
  sha256 '4f069e05bb73d802797e69b6d79cfb0e53474de89808e65d288f32e378bf7439'

  url "https://github.com/UltimateHackingKeyboard/agent/releases/download/v#{version}/UHK.Agent-#{version}-mac.#{version}.dmg"
  appcast 'https://github.com/UltimateHackingKeyboard/agent/releases.atom',
          checkpoint: 'e79113e9c7163cf7072bfe6b4724a46ea1bcdbe437b108c48e43b0516ef8451f'
  name 'Ultimate Hacking Keyboard Agent'
  name 'UHK Agent'
  homepage 'https://github.com/UltimateHackingKeyboard/agent'

  app 'UHK Agent.app'
end
