class Spacer < Formula
  version '0.2'
  desc "A small command-line utility for adding spacers to command output"
  homepage "https://github.com/samwho/spacer"
  head "https://github.com/samwho/spacer.git", branch: "main"

  on_intel do
    if OS.mac?
      url "https://github.com/samwho/spacer/releases/download/v#{version}/spacer-x86_64-apple-darwin.tar.gz"
      sha256 "afb048048a420a48d325141ab1c447f871ab6dacb04143f198c7ecfc640e7e0e"
  elsif OS.linux?
      url "https://github.com/samwho/spacer/releases/download/v#{version}/spacer-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1bdb7debf6387bbe6da68ee70c8edbcac7f8affa43665f82e391212bba610985"
  end

  on_arm do
    depends_on "rust" => :build

    url "https://github.com/samwho/spacer/archive/refs/tags/v#{version}.tar.gz"
    sha256 "7dd19ca312661250f6ce47feaeb5ee50c17f72c0b92a9413a476d8b1445935e0"

    def install
      system "cargo", "install", *std_cargo_args
    end
  end
end
