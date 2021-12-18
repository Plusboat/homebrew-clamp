class Clamp < Formula
  desc "command-line tool for local MAMP management"
  homepage "https://jide.github.io/clamp"
  url "https://github.com/Plusboat/clamp.git", :using => :git, :tag => "1.4.7", :revision => "1745222fe07a1892bc6d413eb9187c22478a0b3a"

  depends_on "httpd"
  depends_on "php"
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
