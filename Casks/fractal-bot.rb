cask "fractal-bot" do
  version "3.00.10"
  sha256 "c5a4458aeaf55aab98d2f43c6e5254ff8f425d6755dbba02e349bf5f6aacd699"

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
