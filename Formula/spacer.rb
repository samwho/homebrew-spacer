class Spacer < Formula
  version "0.1.8"
  desc "A small command-line utility for adding spacers to command output"
  homepage "https://github.com/samwho/spacer"
  head "https://github.com/samwho/spacer.git", branch: "main"

  on_intel do
    if OS.mac?
      url "https://github.com/samwho/spacer/releases/download/v#{version}/spacer-x86_64-apple-darwin.tar.gz"
      sha256 "c244f98faa581105051278827705cbb3e6c6d40d6d956d9aa483fcefe11b4b57"
    elsif OS.linux?
      url "https://github.com/samwho/spacer/releases/download/v#{version}/spacer-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c127514d126bb369003ccbce72a4d147c9447ff0bf055e37c858fac6b92dd34a"
    end

    def install
      bin.install "spacer"
    end
  end

  on_arm do
    depends_on "rust" => :build

    url "https://github.com/samwho/spacer/archive/refs/tags/v#{version}.tar.gz"
    sha256 "f50133bfef2b2bf3c5eb40fd7da06fd030f24dffb71557668ac919471bf49048"

    def install
      system "cargo", "install", *std_cargo_args
    end
  end
end
