class Spacer < Formula
  version '0.1.0'
  desc "A small command-line utility for adding spacers to command output"
  homepage "https://github.com/samwho/spacer"

  if OS.mac?
      url "https://github.com/samwho/spacer/releases/download/v#{version}/spacer-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6827deb9174b5fb0629e64b266939d8829229cebbab85a83a1821a139cb6cfdc"
  elsif OS.linux?
      url "https://github.com/samwho/spacer/releases/download/v#{version}/spacer-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7bfe4b413b10f1a5799955688d111eed2280bd51a70f5a4fe8d34db8aa1dbf1f"
  end

  def install
    bin.install "spacer"
  end
end
