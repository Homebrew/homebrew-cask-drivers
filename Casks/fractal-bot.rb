cask "fractal-bot" do
  version "3.00.09"
  sha256 "799102313510d6d4ab74a6c7865412158bf17bde6334c13b833fb0a77a8f7fcd"

  url "https://www.fractalaudio.com/downloads/fractal-bot/Fractal-Bot-OSX-v#{version.tr(".", "p")}.dmg"
  name "Fractal Bot"
  desc "Send and receive data to and from your Fractal Audio Systems products"
  homepage "https://www.fractalaudio.com/fractal-bot/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Version\s*(\d+(?:\.\d+)*).*?\.dmg/i)
  end

  app "Fractal-Bot.app"

  zap trash: "~/Library/Application Support/Fractal Audio/Fractal-Bot"
end
