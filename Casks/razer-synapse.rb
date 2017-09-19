cask 'razer-synapse' do
  version '1.77'
  sha256 '0af2a01421e3151c191773a58fc68a0383e2b69a96640b953925564d65b86291'

  url "http://dl.razerzone.com/drivers/Synapse2/mac/Razer_Synapse_Mac_Driver_v#{version}.dmg"
  name 'Razer Synapse'
  homepage 'https://www.razerzone.com/synapse/'

  depends_on macos: '>= :lion'

  pkg 'Razer Synapse.pkg'

  uninstall script:    '/Applications/Utilities/Uninstall Razer Synapse.app/Contents/MacOS/Uninstall Razer Synapse',
            pkgutil:   'com.razerzone.*',
            quit:      [
                         'com.razerzone.RzUpdater',
                         'com.razerzone.rzdeviceengine',
                       ],
            launchctl: [
                         'com.razer.rzupdater',
                         'com.razerzone.rzdeviceengine',
                       ]

  zap delete: [
                '~/Library/Preferenecs/com.razer.*',
                '~/Library/Preferenecs/com.razerzone.*',
              ]

  caveats do
    reboot
  end
end
