cask 'hp-easy-start' do
  version :latest
  sha256 :no_check

  url 'http://ftp.hp.com/pub/softlib/software12/HP_Quick_Start/osx/Applications/HP_Easy_Start.app.zip'
  name 'HP Easy Start'
  homepage 'https://support.hp.com/'

  app 'HP Easy Start.app'
end
