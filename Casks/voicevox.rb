cask "voicevox" do
  arch arm: "arm64", intel: "x64"

  version "0.22.1"
  sha256 arm:   "bf75e6e23450cd2c87a63d9ef217c708308ce27c3a5aefca686c0453e9607491",
         intel: "ab87b248473bd99210546a1e062d545a2d08ef20d0b836047db91a062bbd2090"

  url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/VOICEVOX.#{version}-#{arch}.dmg",
      verified: "github.com/VOICEVOX/voicevox/"
  name "VOICEVOX"
  desc "Free, medium-quality text-to-speech and singing synthesizer software"
  homepage "https://voicevox.hiroshiba.jp/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: [
    "voicevox@dev",
    "voicevox@preview",
  ]

  app "VOICEVOX.app"

  zap trash: [
    "~/Library/Application Support/voicevox",
    "~/Library/Application Support/voicevox-cpu",
    "~/Library/Application Support/voicevox-engine",
    "~/Library/Logs/voicevox-cpu",
    "~/Library/Preferences/jp.hiroshiba.voicevox.plist",
    "~/Library/Saved Application State/jp.hiroshiba.voicevox.savedState",
  ]
end
