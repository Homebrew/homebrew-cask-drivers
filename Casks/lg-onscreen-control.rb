cask 'lg-onscreen-control' do
  version '3.76,QMvateEiepmqkHo3sfooXg'
  sha256 'b194059a03aea4bd3bacb55c319f237a2ddb0f5ab266df1775ada6f74743d065'

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
