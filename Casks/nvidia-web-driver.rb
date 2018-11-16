cask 'nvidia-web-driver' do
  version '387.10.10.10.40.108'
  sha256 '090cd232ea8ed7bdd51450174dfceda81d4b4ad675f3a9122bc9c137af9ad49f'

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
