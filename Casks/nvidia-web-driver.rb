cask 'nvidia-web-driver' do
  version '387.10.10.10.25.158'
  sha256 '75a15502f3cf40c38fd86922fbe6e87f5ff8c6a90d6d85f68b784756444274e4'

  url "https://images.nvidia.com/mac/pkg/#{version.major}/WebDriver-#{version}.pkg"
  appcast 'https://gfe.nvidia.com/mac-update',
          checkpoint: '12bc1bbacaff251fca5c97a0e866cf3d4ec1aebba59de21a2a6ae92a1beb9d84'
  name 'NVIDIA Web Driver'
  homepage 'https://www.nvidia.com/Download/index.aspx'

  depends_on macos: '>= :high_sierra'

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end
