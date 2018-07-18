class Whroom < Formula
  desc "Whroom: Which room are you at?"
  homepage "https://github.com/aizu-go-kapro/whroom"
  url "https://github.com/aizu-go-kapro/releases/download/0.1.0/whroom_darwin_amd64.tar.gz"
  version "0.1.0"

  def install
    bin.install "whroom"
  end
end
