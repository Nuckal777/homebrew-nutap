class Promdump < Formula
  desc "Dumps prometheus queries"
  homepage "https://github.com/sapcc/promdump"
  url "https://github.com/sapcc/promdump/archive/refs/tags/v0.3.0.tar.gz"
  head "https://github.com/sapcc/promdump.git"
  # also update version in install
  version "0.3.0"
  sha256 "2196a11444404cc2d6101362c1f373a222eef447fda5c1b6532057bcb143ca07"
  license "Apache-2.0"

  depends_on "go" => :build
  uses_from_macos "curl"
  depends_on "make" => :build

  def install
    system("make", "VERSION=v0.3.0")
    bin.install "promdump"
  end

  test do
    system "#{bin}/promdump", "version"
  end
end
