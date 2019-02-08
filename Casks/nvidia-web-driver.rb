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
    version '387.10.10.10.40.118'
    sha256 '1a03defb969b0240d4ef4b35071520d884e5903e56843150f0b0433c58cc7bcc'
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

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end
