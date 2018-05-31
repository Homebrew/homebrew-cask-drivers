cask 'philips-hue-sync' do
  version '1.0.0.3'
  sha256 '8ca61ab7fb9b40543953a4ffdf4189a1b46c4c0cdee8f6fae0bc3c2daef4a989'

  url do
    require 'open-uri'
    require 'net/http'
    # flex1548-esd.flexnetoperations.com/flexnet/operations was verified as official when first introduced to the cask
    uri = URI('https://flex1548-esd.flexnetoperations.com/flexnet/operations/WebContent?fileID=HueSyncMac')
    res = Net::HTTP.get_response(uri)
    res['location']
  end
  name 'Philips Hue Sync'
  homepage 'https://www2.meethue.com/en-us/entertainment/hue-sync'

  accessibility_access true

  pkg "HueSyncInstaller_#{version}.pkg"

  uninstall pkgutil: 'com.lighting.huesync'
end
