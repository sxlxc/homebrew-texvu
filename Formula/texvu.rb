class Texvu < Formula
  desc "Local PDF.js viewer with SyncTeX for LaTeX workflows"
  homepage "https://github.com/sxlxc/texvu"
  url "https://github.com/sxlxc/texvu.git", tag: "v0.1.0", revision: "4c4c986230a1e8bf7a4261dc6c38e3cc308d4af3"
  license "MIT"

  depends_on "node"

  def install
    libexec.install "src", "vendor", "package.json"
    bin.install_symlink libexec/"src/cli.js" => "texvu"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/texvu --version").strip
  end
end
