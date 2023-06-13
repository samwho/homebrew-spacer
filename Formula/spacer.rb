class Spacer < Formula
  version '0.1.1'
  desc "A small command-line utility for adding spacers to command output"
  homepage "https://github.com/samwho/spacer"

  if OS.mac?
      url "https://github.com/samwho/spacer/releases/download/v#{version}/spacer-x86_64-apple-darwin.tar.gz"
      sha256 "38422ecc38eda76381bcd43ebfe88a47847a4f3570f5db94e7043e33791792f2"
  elsif OS.linux?
      url "https://github.com/samwho/spacer/releases/download/v#{version}/spacer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "881a44d37ddd6575d5a9a88b79c2b745e71fe612ea7143084ff5f4f5e577b34a"
  end

  def install
    bin.install "spacer"
  end
end
