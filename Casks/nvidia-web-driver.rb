cask 'nvidia-web-driver' do
  if MacOS.version <= :yosemite
    version '346.02.03f14'
    sha256 '21df2785257c58b940168b4d4ff73e32f71e9f7e28ed879bf0d605e4abc74aef'
  elsif MacOS.version <= :el_capitan
    version '346.03.15f16'
    sha256 'f0c1a23a262ba6db35f1d7a0da39e7b7648805d63d65be20af33e582cc7050bc'
  elsif MacOS.version <= :sierra
    version '378.05.05.25f11'
    sha256 '7230bf6ef1681b34d7acabeea54979139a2421f47fd28100f104923eaab9370e'
  else
    version '387.10.10.10.40.108'
    sha256 '090cd232ea8ed7bdd51450174dfceda81d4b4ad675f3a9122bc9c137af9ad49f'
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
