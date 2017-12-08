cask 'nvidia-web-driver' do
  version '378.10.10.10.25.102'
  sha256 '5eca1fb15b5bf14083b54fcc667ab57353f0600503d3d9daa317dbfe8b3941af'

  url "https://images.nvidia.com/mac/pkg/#{version.major}/WebDriver-#{version}.pkg"
  appcast 'https://gfe.nvidia.com/mac-update',
          checkpoint: '9fd6c3b53687a3891ed1cbb6d52473e87039f6035bcfe85dae8df29c9a5a59c6'
  name 'NVIDIA Web Driver'
  homepage 'https://www.nvidia.com/Download/index.aspx'

  depends_on macos: '>= :high_sierra'

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end
