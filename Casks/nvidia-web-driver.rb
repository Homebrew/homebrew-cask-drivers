cask 'nvidia-web-driver' do
  version '387.10.10.15.15.108'
  sha256 '651981031a33d5bc9f84d3a46c2e7b4ac3691d93005c71714dda0f83c6143bc4'

  url "https://images.nvidia.com/mac/pkg/#{version.major}/WebDriver-#{version}.pkg"
  appcast 'https://gfe.nvidia.com/mac-update'
  name 'NVIDIA Web Driver'
  homepage 'https://www.nvidia.com/Download/index.aspx'

  depends_on macos: '>= :high_sierra'

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end
