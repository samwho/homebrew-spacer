class Spacer < Formula
  version '0.2.0'
  desc "A small command-line utility for adding spacers to command output"
  homepage "https://github.com/samwho/spacer"

  if OS.mac?
      url "https://github.com/samwho/spacer/releases/download/v#{version}/spacer-x86_64-apple-darwin.tar.gz"
      sha256 "afb048048a420a48d325141ab1c447f871ab6dacb04143f198c7ecfc640e7e0e"
  elsif OS.linux?
      url "https://github.com/samwho/spacer/releases/download/v#{version}/spacer-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1bdb7debf6387bbe6da68ee70c8edbcac7f8affa43665f82e391212bba610985"
  end

  def install
    bin.install "spacer"
  end
end
