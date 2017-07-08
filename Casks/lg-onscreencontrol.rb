cask 'lg-onscreencontrol' do
  version '2.46'
  sha256 '7263b8cb714cf25db16cee7310ba03a79cc28754cb18f55c30642cc745d64740'
  
  lgosc_doc_id = '20150320442554'
  lgosc_file_id = 'q0YuHZx6oufr6zJ6znVLmg'
  lgosc_original_name = "MAC_OSC.#{version}.zip"

  url "http://www.lg.com/us/lgecs.downloadFile.ldwf?DOC_ID=#{lgosc_doc_id}&what=MANUAL&fromSystem=LG.COM&fileId=#{lgosc_file_id}&ORIGINAL_NAME_b1_a1=#{lgosc_original_name}"
  name 'LG OnScreen Control'
  homepage 'http://www.lg.com/'

  pkg "OnScreenControl_V#{version}.pkg"

  uninstall quit:    'com.LGSI.-.OnScreen-Control',
            pkgutil: 'com.lge.onscreenControl.*'
end
