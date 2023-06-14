class Spacer < Formula
  version '0.1.6'
  desc "A small command-line utility for adding spacers to command output"
  homepage "https://github.com/samwho/spacer"

  if OS.mac?
      url "https://github.com/samwho/spacer/releases/download/v#{version}/spacer-x86_64-apple-darwin.tar.gz"
      sha256 "6a09295bb1b06349702d6beeb2c0521a7cfd135d4105c91ed43fff690a6bee4c"
  elsif OS.linux?
      url "https://github.com/samwho/spacer/releases/download/v#{version}/spacer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1f2c04950920996c826bdfa1de543ccd117fec784663bb9cb733924ac30e9518"
  end

  def install
    bin.install "spacer"
  end
end
