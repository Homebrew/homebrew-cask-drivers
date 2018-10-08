cask 'lg-onscreen-control' do
  version '3.06_patch2_08-Jun'
  sha256 'f4b02aaadb1f96e0e0ed9eeb6a9eced79c9bb0e52a833fd56a4134417569ad25'

  # lge.com was verified as official when first introduced to the cask
  url 'http://gscs-b2c.lge.com/downloadFile?fileId=llBVD1dzcCzDocSnIyUkwg'
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
