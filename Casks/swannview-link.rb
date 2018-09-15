cask 'swannview-link' do
  version '2.2.7.25'
  sha256 '413f1cc4e2154de8c8453fb89f5d1cbec6819aa78587c4c5fa6fb663c007e568'

  # dropbox.com/s/os2ye4i2nv49csq was verified as official when first introduced to the cask
  url "https://www.dropbox.com/s/os2ye4i2nv49csq/SwannView%20Link%20Mac%20#{version}dmg?dl=1"
  name 'SwannView Link'
  homepage 'https://swann.desk.com/customer/en/portal/articles/2171357-swannview-link-for-mac'

  app 'SwannView Link.app'
end
