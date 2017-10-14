cask 'razer-synapse' do
  version '1.79'
  sha256 '706be1158e398485de73ed61086518c27e74e5645dd85ef3ace6cc1bf5caec3e'

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
