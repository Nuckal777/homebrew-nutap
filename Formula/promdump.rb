class Promdump < Formula
  desc "Dumps prometheus queries"
  homepage "https://github.com/sapcc/promdump"
  url "https://github.com/sapcc/promdump/archive/refs/tags/v0.1.0.tar.gz"
  head "https://github.com/sapcc/promdump.git"
  # also update version in install
  version "0.1.0"
  sha256 "c507caa41da2f95dfa13d565ea5a04ed15a614da6686c51a79d55d9d4464699e"
  license "Apache-2.0"

  depends_on "go" => :build
  uses_from_macos "curl"
  depends_on "make" => :build

  def install
    system("make", "VERSION=v0.1.0")
    bin.install "promdump"
  end

  test do
    system "#{bin}/promdump", "version"
  end
end
