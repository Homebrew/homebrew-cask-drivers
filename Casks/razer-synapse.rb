cask 'razer-synapse' do
  version '1.82'
  sha256 '781648ad5302eb9e068742f923d32dfbead7e0698d62a9b123d1729ade19d6b5'

  url "https://dl.razerzone.com/drivers/Synapse2/mac/Razer_Synapse_Mac_Driver_v#{version}.dmg"
  name 'Razer Synapse'
  homepage 'https://www.razerzone.com/synapse/'

  depends_on macos: '>= :mavericks'

  pkg 'Razer Synapse.pkg'

  uninstall delete:    '/Applications/Razer Synapse.app',
            launchctl: [
                         'com.razer.rzupdater',
                         'com.razerzone.rzdeviceengine',
                       ],
            pkgutil:   'com.razerzone.*',
            quit:      [
                         'com.razerzone.RzUpdater',
                         'com.razerzone.rzdeviceengine',
                       ]

  zap trash: [
               '/Library/Application Support/Razer',
               '~/Library/Preferences/com.razer.*',
               '~/Library/Preferences/com.razerzone.*',
             ]

  caveats do
    reboot
  end
end
