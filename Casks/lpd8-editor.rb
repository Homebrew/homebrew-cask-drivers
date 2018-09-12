cask 'lpd8-editor' do
  version '0cbc6a464f295cc7b3f9d11da14bdc87'
  sha256 :no_check

  # b8e57dc469f9d8f4cea5-1e3c2cee90259c12021d38ebd8ad6f0f.r79.cf2.rackcdn.com was verified as official when first introduced to the cask
  url "http://b8e57dc469f9d8f4cea5-1e3c2cee90259c12021d38ebd8ad6f0f.r79.cf2.rackcdn.com/Product_Downloads/lpd8_editor_mac_00.zip_#{version}.zip"
  name 'LPD8 Editor'
  homepage 'http://www.akaipro.com/products/pad-controllers/lpd-8'

  app 'LPD8_Editor_Mac/LPD8 Editor.app'
end
