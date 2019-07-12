cask 'lg-onscreen-control' do
  version '3.47_Patch4,amazoVC9WKIfY3GaS0eBcQ'
  sha256 'd68f02607f3c1ede54b9b96c630ee56a18e3d399987fd86bbfdcd0b02528932a'

  # lge.com was verified as official when first introduced to the cask
  url "http://gscs-b2c.lge.com/downloadFile?fileId=#{version.after_comma}"
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
