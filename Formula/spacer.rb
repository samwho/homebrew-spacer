class Spacer < Formula
  version '0.1.2'
  desc "A small command-line utility for adding spacers to command output"
  homepage "https://github.com/samwho/spacer"

  if OS.mac?
      url "https://github.com/samwho/spacer/releases/download/v#{version}/spacer-x86_64-apple-darwin.tar.gz"
      sha256 "5aa356a8a0cf1d5e179fa0011af30b47a36f5daf3953ae4bf73e2a7ba69ac1f4"
  elsif OS.linux?
      url "https://github.com/samwho/spacer/releases/download/v#{version}/spacer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "615b33d2e3d91cf225303140f28cb54c33daef6626ed6b99731fae4e5b7fc531"
  end

  def install
    bin.install "spacer"
  end
end
