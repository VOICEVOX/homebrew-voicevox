cask "voicevox" do
  arch arm: "arm64", intel: "x64"

  version "0.20.0"
  sha256 arm:   "6e8caeb34575c94349b8667756b7f6811dd739c2d12c8845156507343fe76cf2",
         intel: "8b93629fcd1d89ab64bc9aba4966d46a17108559c1340800cd642c9cbbe14586"

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
