cask 'razer-synapse' do
  version '1.81'
  sha256 '854f27047cedae3c91f848a7816c7f2724235d2227155ad264eef48f0440471b'

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
