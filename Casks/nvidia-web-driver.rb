cask 'nvidia-web-driver' do
  if MacOS.version <= :sierra
    version '378.05.05.25f01'
    sha256 '79b831457e0ba0b7f99ee69f49f1abcd106446713bfa2ffc09e4058b4dec501d'
  else
    version '378.10.10.10.25.102'
    sha256 '5eca1fb15b5bf14083b54fcc667ab57353f0600503d3d9daa317dbfe8b3941af'
  end

  url "https://images.nvidia.com/mac/pkg/378/WebDriver-#{version}.pkg"
  appcast 'https://gfe.nvidia.com/mac-update',
          checkpoint: '9fd6c3b53687a3891ed1cbb6d52473e87039f6035bcfe85dae8df29c9a5a59c6'
  name 'NVIDIA Web Driver'
  homepage 'https://www.nvidia.com/Download/index.aspx'

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end
