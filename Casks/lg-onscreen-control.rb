cask 'lg-onscreen-control' do
  version '3.69,zBJAUHZ4JjNzO5UHojPoA'
  sha256 '4ceaf3da93df82c5fa0062016f4a772eadf5c0468e65ea6bee95911e2b8414bd'

  # lge.com was verified as official when first introduced to the cask
  url "http://gscs-b2c.lge.com/downloadFile?fileId=#{version.after_comma}"
  name 'LG OnScreen Control'
  homepage 'https://www.lg.com/us/support/monitors'

  pkg "OSC_V#{version.before_comma}_signed.pkg"

  postflight do
    system_command '/bin/chmod',
                   args: ['755', '/usr/local', '/usr/local/lmm'],
                   sudo: true
  end

  uninstall login_item: [
                          'OnScreen Control',
                          'OSCMultiMonitor',
                        ],
            quit:       [
                          'com.LGSI.OnScreen-Control',
                          'com.LGSI.OSCMultiMonitor',
                        ],
            pkgutil:    [
                          'com.lge.onscreenControl.*',
                          'com.lge.OnscreenControl.*',
                        ]

  zap trash: [
               '~/Library/Caches/com.LGSI.OnScreen-Control',
               '~/Library/Caches/com.LGSI.OSCMultiMonitor',
               '~/Library/Preferences/com.LGSI.OnScreen-Control.plist',
               '~/Library/Preferences/com.LGSI.OSCMultiMonitor.plist',
             ]
end
