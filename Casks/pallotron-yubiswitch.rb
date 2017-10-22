cask 'pallotron-yubiswitch' do
  version '0.12'
  sha256 '691ff7017c000211587217c60a6a9f352b3cb8d9ee2ce099f01d096d794a01ff'

  url "https://github.com/pallotron/yubiswitch/releases/download/v#{version}/yubiswitch_#{version}.dmg"
  appcast 'https://github.com/pallotron/yubiswitch/releases.atom',
          checkpoint: '31624b172828e2b1d3a2e2dabbe35f6243957eadf84d631a86c2684032db4710'
  name 'yubiswitch'
  homepage 'https://github.com/pallotron/yubiswitch'

  app 'yubiswitch.app'
end
