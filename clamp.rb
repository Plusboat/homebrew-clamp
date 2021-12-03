class Clamp < Formula
  desc "command-line tool for local MAMP management"
  homepage "https://jide.github.io/clamp"
  url "https://github.com/Plusboat/clamp.git", :using => :git, :tag => "1.4.3", :revision => "c324cb8c25a913dfaabddd90f23597cd73f2c641"

  depends_on "mariadb"

  def install
    inreplace "clamp", %r{/usr/local/clamp}, prefix
    prefix.install Dir["*"]
    bin.install_symlink "../clamp"
  end

  test do
    system bin/"clamp", "help"
  end
end
