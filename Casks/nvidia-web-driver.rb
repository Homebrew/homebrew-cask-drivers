cask 'nvidia-web-driver' do
  version '387.10.10.10.25.161'
  sha256 'c3143c1f41b177255f53889d1df9405f8d41e07b0211fbe2c0cccf469d7fca19'

  url "https://images.nvidia.com/mac/pkg/#{version.major}/WebDriver-#{version}.pkg"
  appcast 'https://gfe.nvidia.com/mac-update',
          checkpoint: 'b853b43cb7888347b19c3f00e81295c95e2f4b3a40d55f871d691b3da6c577d5'
  name 'NVIDIA Web Driver'
  homepage 'https://www.nvidia.com/Download/index.aspx'

  depends_on macos: '>= :high_sierra'

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end
