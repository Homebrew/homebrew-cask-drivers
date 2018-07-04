cask 'nordic-nrf5x-command-line-tools' do
  version '53406.21.3166817'
  sha256 '95ad0aba8f9db50ad30b4a3963772648c69b34a79a27a580ff85f0248ac11e5c'

  url "https://www.nordicsemi.com/eng/nordic/download_resource/#{version.major}/#{version.minor}/#{version.patch}"
  name 'nRF5x Command Line Tools'
  homepage 'https://www.nordicsemi.com/eng/nordic/Products/nRF51-DK/nRF5x-Command-Line-Tools-OSX/53412'

  binary 'nrfjprog/nrfjprog'
  binary 'mergehex/mergehex'
end
