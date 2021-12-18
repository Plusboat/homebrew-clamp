class Clamp < Formula
  desc "command-line tool for local MAMP management"
  homepage "https://jide.github.io/clamp"
  url "https://github.com/Plusboat/clamp.git", :using => :git, :tag => "1.4.8", :revision => "eb5c656c20a7e42d42ec74bb2db346fe554cbb48"

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
