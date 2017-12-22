cask 'nvidia-web-driver' do
  version '378.10.10.10.25.103'
  sha256 '815294b7229fd69679e6d96c1a4898e23f97b1b67a779a742ee488e25672a7ed'

  url "https://images.nvidia.com/mac/pkg/#{version.major}/WebDriver-#{version}.pkg"
  appcast 'https://gfe.nvidia.com/mac-update',
          checkpoint: '135278c3876fdc194b281293839d0e04421a0ac97545ae3bc8073eb81aacdb5a'
  name 'NVIDIA Web Driver'
  homepage 'https://www.nvidia.com/Download/index.aspx'

  depends_on macos: '>= :high_sierra'

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end
