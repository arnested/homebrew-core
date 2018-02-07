class Mdcat < Formula
  desc "Cat for markdown"
  homepage "https://github.com/lunaryorn/mdcat"
  url "https://github.com/lunaryorn/mdcat/archive/mdcat-0.6.0.tar.gz"
  sha256 "bcc05615f6aeea1a406a481502abb12add62ac12c7f140bfe4430cda78039bb3"
  head "https://github.com/lunaryorn/mdcat.git"

  depends_on "cmake" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix
  end

  test do
    assert_match "┄┄[0.1] – 2018-01-14", shell_output("#{bin}/mdcat #{prefix}/CHANGELOG.md")
  end
end
