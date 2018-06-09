cask 'nvidia-web-driver' do
  version '387.10.10.10.35.106'
  sha256 'bb60b4bff4eb918de2b872eaa59e061a92d8306e305cbd70300246ebff1a0b24'

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
