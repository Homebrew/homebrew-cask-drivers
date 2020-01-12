cask 'blocks-code' do
  version '0.2.1'
  sha256 'af9c68850f9a5f27e9eeed21e4372c2b8948213104ed9f96de07dab6315d90aa'

  # assets.roli.com/blocks was verified as official when first introduced to the cask, ROLI is the company owning JUCE.
  url "https://assets.roli.com/blocks/BLOCKS+Code/#{version}/BLOCKSCodeInstallerOSX_v#{version}.mpkg"
  appcast 'https://juce.com/blocks/code'
  name 'BLOCKS Code'
  homepage 'https://juce.com/blocks/code'

  pkg "BLOCKSCodeInstallerOSX_v#{version}.mpkg"

  uninstall pkgutil: 'com.roli.blocks.code'
end
