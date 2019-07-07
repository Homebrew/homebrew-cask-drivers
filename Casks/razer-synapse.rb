cask 'razer-synapse' do
  version '1.86.4'
  sha256 '15e4f2979a4cf341effa4e08e007efc05ed7f9b68675adcf5aba0bb21d298255'

  url "https://dl.razerzone.com/drivers/Synapse2/mac/Razer_Synapse_Mac_Driver_v#{version.major_minor}.dmg"
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
