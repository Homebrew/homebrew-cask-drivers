cask 'nvidia-web-driver' do
  version '387.10.10.10.30.106'
  sha256 'c7685e947c6cd0237e62d10ef4070c1591e88fc6189785638d6d08b1ff9badfd'

  url "https://images.nvidia.com/mac/pkg/#{version.major}/WebDriver-#{version}.pkg"
  appcast 'https://gfe.nvidia.com/mac-update',
          checkpoint: 'a9e64f770ad62ad97c54e47b9990ab247efa08bc53c476c4a05501301e919074'
  name 'NVIDIA Web Driver'
  homepage 'https://www.nvidia.com/Download/index.aspx'

  depends_on macos: '>= :high_sierra'

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end
