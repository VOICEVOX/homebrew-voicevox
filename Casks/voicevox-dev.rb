cask "voicevox-dev" do
  version "0.15.0-dev"
  sha256 :no_check

  url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/VOICEVOX.dmg",
      verified: "github.com/VOICEVOX/voicevox/"
  name "VOICEVOX"
  desc "Free, medium-quality text-to-speech software"
  homepage "https://voicevox.hiroshiba.jp/"

  livecheck do
    url :url
    regex(/(\d+(?:\.\d+)*-dev)$/i)
  end

  conflicts_with cask: [
    "voicevox",
    "voicevox-preview",
  ]

  app "VOICEVOX.app"
end
