require "language/node"

class AtlassianDevbox < Formula
  desc "Atlassian enterprise products development tools"
  homepage "https://viqueen.org/notes/atlassian-devbox/"
  url "https://registry.npmjs.org/atlassian-devbox/-/atlassian-devbox-1.0.2.tgz"
  sha256 "4729255b8280f6363a78f8cbc910e32549a768003d5cc18c34dc375a862fb1a1"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    system "npm", "run", "postinstall"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "false"
  end
end
