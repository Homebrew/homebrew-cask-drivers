cask 'nvidia-web-driver' do
  version '387.10.10.10.30.107'
  sha256 'c5b269f03851774a1d6b3620c627a1d23065546a1cda03ad94f82b81fbeadf01'

  url "https://images.nvidia.com/mac/pkg/#{version.major}/WebDriver-#{version}.pkg"
  appcast 'https://gfe.nvidia.com/mac-update',
          checkpoint: 'ae5b5890c15199ae84aca0adc2ce94e71512c0bfa71c9adeb56c6d00f473fe6b'
  name 'NVIDIA Web Driver'
  homepage 'https://www.nvidia.com/Download/index.aspx'

  depends_on macos: '>= :high_sierra'

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end
