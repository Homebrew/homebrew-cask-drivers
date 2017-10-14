cask 'razer-synapse' do
  if MacOS.version >= :mavericks
    version '1.79'
    sha256 '706be1158e398485de73ed61086518c27e74e5645dd85ef3ace6cc1bf5caec3e'
  elsif MacOS.version == :mountain_lion
    version '1.49'
    sha256 'dd828cc5ab7e3cdcdd5288283888f5010de2b33a9747eed72d17269acf05e7bf'
  elsif MacOS.version <= :lion
    version '1.34'
    sha256 'b1e8db46d58942468625ce2723a92bfd607fb6b94f1b7ad7797e36f7bb74b9d1'
  end

  url "http://dl.razerzone.com/drivers/Synapse2/mac/Razer_Synapse_Mac_Driver_v#{version}.dmg"
  name 'Razer Synapse'
  homepage 'https://www.razerzone.com/synapse/'

  depends_on macos: '>= :snow_leopard'

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
