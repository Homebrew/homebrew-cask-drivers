cask 'lg-onscreen-control' do
  version '3.82,U6LpEY8y0TeDxWGmkuVxqw'
  sha256 '27c385abc6e2ae738e7086efc4be91514a1e0086774bff461c033899bfcef608'

  # lge.com/ was verified as official when first introduced to the cask
  url "http://gscs-b2c.lge.com/downloadFile?fileId=#{version.after_comma}"
  name 'LG OnScreen Control'
  homepage 'https://www.lg.com/us/support/monitors'

  pkg "OSC_V#{version.before_comma}_signed_MonitorLab.pkg"

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
                          'com.Fonts.pkg',
                          'com.OSCApp.pkg',
                          'com.OSCMultiMonitor.pkg',
                          'com.OSC_Directory.pkg',
                          'com.OSC_Library.pkg',
                          'com.uninstall.pkg',
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
