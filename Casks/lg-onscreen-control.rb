cask 'lg-onscreen-control' do
  version '3.28'
  sha256 '1ad1ee2b5049bb1f6737b1833e2d96326185ec39d838ba70c6bd7a64a2c8aee9'

  # lge.com was verified as official when first introduced to the cask
  url 'http://gscs-b2c.lge.com/downloadFile?fileId=YtQPNX3tv7fWP8wHQt12A'
  name 'LG OnScreen Control'
  homepage 'https://www.lg.com/us/support/monitors'

  pkg "OSC_V#{version.before_comma}.pkg"

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
