cask 'nvidia-web-driver' do
  if MacOS.version <= :yosemite
    version '346.02.03f14'
    sha256 '21df2785257c58b940168b4d4ff73e32f71e9f7e28ed879bf0d605e4abc74aef'
  elsif MacOS.version <= :el_capitan
    version '346.03.15f16'
    sha256 'f0c1a23a262ba6db35f1d7a0da39e7b7648805d63d65be20af33e582cc7050bc'
  elsif MacOS.version <= :sierra
    version '378.05.05.25f13'
    sha256 'f5849297ee8a4a754f26d998db83878d4c02324db00ec28ab38da1d847d7e5c1'
  else
    version '387.10.10.10.40.122'
    sha256 '2f7701fa8b2edfcb51ed529ea76f6a5b42e3522f2ecdf278b127c2f9b4c296ed'
  end

  url "https://images.nvidia.com/mac/pkg/#{version.major}/WebDriver-#{version}.pkg"
  appcast 'https://gfe.nvidia.com/mac-update'
  name 'NVIDIA Web Driver'
  homepage 'https://www.nvidia.com/Download/index.aspx'

  depends_on macos: [
                      :yosemite,
                      :el_capitan,
                      :sierra,
                      :high_sierra,
                    ]

  pkg "WebDriver-#{version}.pkg"

  uninstall launchctl: [
                         'com.nvidia.nvagent',
                         'com.nvidia.nvroothelper',
                       ],
            quit:      [
                         'com.nvidia.NVIDIAWebDriverUninstaller',
                         'com.nvidia.nvagent',
                         'com.nvidia.nvmenu',
                       ],
            kext:      [
                         'com.nvidia.NVDAStartupWeb',
                         'com.nvidia.web.GeForce*Web',
                         'com.nvidia.web.NVDA*Web',
                       ],
            pkgutil:   'com.nvidia.web-driver',
            delete:    '/Library/PreferencePanes/NVIDIA Driver Manager.prefPane'

  zap trash: [
               '~/Library/Preferences/ByHost/com.nvidia.nvagent.*.plist',
               '~/Library/Preferences/ByHost/com.nvidia.nvprefpane.*.plist',
             ]

  caveats do
    reboot
  end
end
